-- CHAPTER 02.WHERE

-- WHERE 절 기본 사용방법
--3. SELECT 조회할 컬럼 명1, .....조회할 컬럼명 N
--1.   FROM 조회할 테이블 명
--2.  WHERE 조회할 행을 선별하기 위한 조건 식

-- 실습) 직원테이블에서 직원ID가 105인 직원의 FIRST_NAME과 LAST_NAME을 출력
SELECT FIRST_NAME, LAST_NAME
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID = 105;
 
-- 실습2) 부서테이블에서 매니저아이디가 100인 부서이름과 부서아이디를 출력
SELECT DEPARTMENT_NAME, DEPARTMENT_ID
  FROM DEPARTMENTS
 WHERE MANAGER_ID = 100;

-- 직원테이블에서 급여가 9000인 직원의 직원ID, 직원이름, 급여정보를 출력
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY = 9000;

-- 산술 연산자 < +, -, *, / >
SELECT SALARY*2
  FROM EMPLOYEES;
  
-- 비교 연산자 [ >(초과), >=(이상), <(미만), <=(이하) ]

-- 직원테이블에서 급여가 5000이하인 직원의 이름과 급여 정보를 출력
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY <=5000;
 
-- 직원테이블에서 연봉이 50000 이하인 직원들의 이름과 연봉을 출력
SELECT FIRST_NAME, SALARY*12
  FROM EMPLOYEES
 WHERE SALARY*12 <= 50000;

-- 등가 비교 연산자 (같다 아니면 같지 않다)

-- 실습1)
SELECT * FROM EMPLOYEES;
-- 직원테이블에서 직업아이디가 IT_PROG 가 아닌 직원의 이름과 직업아이디를 출력
SELECT FIRST_NAME, JOB_ID
  FROM EMPLOYEES
 WHERE JOB_ID != 'IT_PROG';

-- 논리연산자 (참 아니면 거짓)
--> 2개이상의 조건이 있을때 이어주는 역할을 하는 연산자입니다.

-- AND : 조건을 모두 만족하는 경우 TRUE값을 반환
-- OR  : 하나의 조건이라도 만족하면 TRUE값을 반환

-- 직원테이블에서 부서아이디가 90이고 급여가 5000이상인 직원의
-- 직원아이디와 직원이름을 출력

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID, SALARY
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID = 90 
   AND SALARY >= 5000;

-- 직원테이블에서 부서아이디가 100이거나
-- 입사일이 06년 02월 02일 이후에 입사한 직원의 이름과 입사일 정보를 출력
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID = 100
    OR HIRE_DATE >= '06-02-02';

-- 직원테이블에서 부서ID가 100이거나 90인 직원 중에서
-- 직원ID가 101인 직원의 직원ID, 이름, 연봉을 출력
-- 단, 연봉은 ANNSAL 이라는 별칭을 사용해서 출력
-- 힌트 > AND > OR
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY*12 AS AnnSal, DEPARTMENT_ID
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID IN (100, 90)
   AND EMPLOYEE_ID = 101;
   
-- AND연산자가 OR연산자보다 우선순위가 높아서 연산자 우선순위에 따라서
-- 결과값이 달라진다.

-- NULL관련 연산자
-- IS NULL : 데이터 값이 NULL인 값을 조회
-- IS NOT NULL : 데이터 값이 NULL이 아닌 값을 조회

-- 직원테이블에서 보너스가 있는 직원의 이름과 보너스 정보를 출력
SELECT * FROM EMPLOYEES;
 
SELECT FIRST_NAME, COMMISSION_PCT
  FROM EMPLOYEES
 WHERE COMMISSION_PCT IS NOT NULL;
 
-- 퀴즈) DEPARTMENT_ID가 없는 직원의 이름은?
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID IS NULL;
 
-- SQL연산자
--> SQL에서 사용할수 있는 연산자다.

--> IN, BETWEEN, LIKE

-- IN : 특정 컬럼에 포함된 데이터를 여러개 조회할 때 활용

-- 직원 테이블에서 부서ID가 30이거나 50이거나 90인 직원의 모든 정보를 출력
SELECT *
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID IN (30, 50, 90);
 
-- IN 연산자를 활용
 
-- 직원테이블에서 매니저 아이디가 100, 102, 103인 직원의 이름과 매니저 아이디를 출력
SELECT FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES
 WHERE MANAGER_ID IN (100, 102, 103, NULL);

-- NOT IN
--> IN 뒤에 조건에 해당하지 않는 데이터를 출력
--> != + AND
--> NOT IN을 사용할때는 NULL값을 주게 되면

-- 직원테이블에서 매니저 아이디가 100, 120, 121이 아닌 직원들의
-- 이름과 매니저 아이디를 출력
SELECT FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES
 WHERE MANAGER_ID NOT IN (100, 120, 121);

-- 실습) 직원테이블에서 직업아이디가 AD_VP이거나 ST_MAN인 직원의
-- 이름과 직업아이디를 출력
SELECT FIRST_NAME, JOB_ID
  FROM EMPLOYEES
 WHERE JOB_ID IN ('AD_VP', 'ST_MAN');
 
-- 직원테이블에서 매니저아이디가 145, 146, 147, 148, 149가 아닌 직원의
-- 이름과 매니저아이디를 출력
SELECT FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES
 WHERE MANAGER_ID NOT IN (145, 146, 147, 148, 149);
 
-- BETWEEN A AND B
--> 일정 범위 내의 데이터를 조회할 때 사용
--> BETWEEN 최소값 AND 최대값
--> 특정 열 값의 최소, 최고 범위를 지정하여 해당 범위 내의 데이터만 조회

-- 직원테이블에서 급여가 10000 이상 20000 이하인 직원의 이름과 급여의 정보를 출력
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY BETWEEN 10000 AND 20000;
 
--> BETWEEN 최소값 이상 AND 최대값 이하 입니다.

-- 직원테이블에서 05년에 입사한 직원의 이름과 입사일을 출력
-- 05/01/01 ~ 05/12/31
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE HIRE_DATE BETWEEN '05-01-01' AND '05-12-31';
 
-- LIKE 연산자
-- 일부 문자열이 포함된 데이터를 조회할때 사용
-- %, _ 라는 와일드 카드를 이용해서 매칭연산을 진행합니다.

-- % : 길이와 상관없이 모든 문자 데이터를 의미
-- _ : 어떤 값이든 상관없이 한개의 문자 데이터를 의미

SELECT * FROM EMPLOYEES;
-- 직원테이블에서 핸드폰번호가 650으로 시작하는 직원의 이름과 핸드폰번호를 출력
SELECT FIRST_NAME, PHONE_NUMBER
  FROM EMPLOYEES
 WHERE PHONE_NUMBER LIKE '650%';

-- 1) 직원테이블에서 이름이 S로 시작하고 n으로 끝나는 직원의 이름찾기
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE FIRST_NAME LIKE 'S%_n';
 
-- 2) 직원테이블에서 이름이 it으로 끝나고 총 4글자인 직원의 이름 찾기
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE FIRST_NAME LIKE '__it';

-- 3) 직원테이블에서 이름이 두번째 글자가 e인 직원의 이름 찾기
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE FIRST_NAME LIKE '_e%';

-- 4) 직원테이블에서 01월에 입사한 직원의 이름과 입사날짜 찾기
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE HIRE_DATE LIKE '01%';




 
 
 
 
 
 
 
