-- CHAPTER 01.SELECT

-- 주석

select first_name from employees;

SELECT FIRST_NAME 
  FROM EMPLOYEES;
  
-- 직원테이블에서 직원의 이메일 정보를 출력
SELECT EMAIL FROM EMPLOYEES;

-- 직원테이블에서 직원ID, FIRST_NAME, PHONE_NUMBER, SALARY(급여) 정보를 출력
SELECT EMPLOYEE_ID, FIRST_NAME, PHONE_NUMBER, SALARY
  FROM EMPLOYEES;

-- * 곱하기
-- select 절에 * 을 쓰게 되면 아스타리스크 라는 와일드카드로 변한다.

-- * (아스타리스크) - > 전체를 의미를 한다.
-- 직원테이블의 전체 정보를 출력하기
SELECT *
  FROM EMPLOYEES;
  
-- 부서테이블의 전체 정보를 출력하고 행의 갯수가 몇개입니까?
SELECT *
  FROM DEPARTMENTS;
-- 부서는 총 27개로 구성되어있다.

-- 실습1) 직원테이블에서 직원ID, FIRST_NAME, 매니저ID를 출력
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES;

-- 실습2) 부서테이블에서 부서ID, 부서명, 위치ID를 출력
SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID
  FROM DEPARTMENTS;

-- 직원테이블에서 직원의 부서ID를 출력
SELECT DEPARTMENT_ID
  FROM EMPLOYEES;
  
-- 데이터 중복 제거하기
-- DISTINCT : 데이터 중복 제거

SELECT DISTINCT DEPARTMENT_ID
  FROM EMPLOYEES;

-- 직원테이블에서 JOB_ID의 컬럼의 중복을 제거하여 출력
SELECT DISTINCT JOB_ID
  FROM EMPLOYEES;
  
-- 직원테이블에서 JOB_ID와 부서ID를 중복을 제거하여 출력
SELECT DISTINCT JOB_ID, DEPARTMENT_ID
  FROM EMPLOYEES;
-- DISTINCT 뒤에 2개 이상의 컬럼을 적게 되면
-- 한쪽 컬럼에 중복이 있어도 다른 쪽 컬럼의 값이 다르면 다르게 취급한다.

-- TIP:
--> 컬럼에 숫자 연산이 가능하다 (+, -, *, /)

-- 직원테이블에서 직원의 이름(FIRST_NAME)과 급여의 정보를 출력
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;
-- 직원의 이름과 급여와 연봉의 정보를 출력
SELECT FIRST_NAME, SALARY, SALARY*12
  FROM EMPLOYEES;

-- 별칭을 사용하기
-- Alias 라고 하며 한눈에 보기 좋게 설정 할수 있다.
-- AS 키워드를 사용해서 별칭을 지정한다.

-- 별칭 사용방법
-- 1. SELECT 컬럼 별칭
-- 2. SELECT 컬럼 "별칭"
-- 3. SELECT 컬럼 AS 별칭
-- 4. SELECT 컬럼 AS "별칭"

SELECT FIRST_NAME AS "이름" , SALARY AS "급여", SALARY*12 AS "연봉"
  FROM EMPLOYEES;

-- 직원테이블에서 직원의 이름과 입사일(HIRE_DATE), 입사일 다음날의 정보를 출력
SELECT FIRST_NAME 이름, HIRE_DATE 입사일, HIRE_DATE+1 입사일다음날
  FROM EMPLOYEES;
  
  SELECT FIRST_NAME "이름", HIRE_DATE "입사일", HIRE_DATE+1 "입사일다음날"
  FROM EMPLOYEES;

SELECT FIRST_NAME AS 이름, HIRE_DATE AS 입사일, HIRE_DATE+1 AS 입사일다음날
  FROM EMPLOYEES;

SELECT FIRST_NAME AS "이름", HIRE_DATE AS "입사일", HIRE_DATE+1 AS "입사일다음날"
  FROM EMPLOYEES;

-- ORDER BY절
--> 특징:컬럼을 기준으로 정렬된 상태로 출력하고자 할때 사용한다.
--> SQL실행순서에서 가장 마지막에 실행 된다.
--> 별도로 정렬방식을 저장하지 않으면 기본적으로 오름차순(ASC)이 적용된다.
-- 정렬방식
-- ASC(Ascending) : 오름차순 정렬 (1, 2, 3, 4, 5, .....)
-- DESC(Descending) : 내림차순 정렬 (10, 9, 8, 7, 6, .....)

DESC EMPLOYEES;
-- DESC(DESCRIBE)
--> 테이블의 구조를 확인하는 명령어

-- 직원테이블에서 모든 직원의 정보를 출력하는데 급여 기준으로 오름차순으로 정렬하여 출력
SELECT * 
  FROM EMPLOYEES
ORDER BY SALARY ASC;

-- 직원테이블에서 최근에 입사한 날짜를 기준으로 직원의 이름과 입사날짜의 정보를 출력
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
ORDER BY HIRE_DATE DESC;

-- 직원테이블에서 직원ID, 부서ID, 이름, 급여 순으로 출력
-- 단 부서ID는 오름차순으로 정렬, 급여는 내림차순으로 정렬
SELECT EMPLOYEE_ID, DEPARTMENT_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
ORDER BY DEPARTMENT_ID ASC, SALARY DESC;
-- 같은 부서에서 근무하고 있는 직원들끼리 급여가 높은 순서대로 출력
--> 먼저 부서아이디를 오름차순으로 정렬한 후에 급여를 내림차순으로 순차적으로 정렬을 한것

--NULL이란?
--> NULL 값이란 데이터의 값이 완전히 비어 있는 상태를 말합니다.
--> 값이 존재하지 않거나 정해지지 않은 것을 의미합니다.
--> 숫자 0과 빈 문자열 " "은 NULL값이 아닙니다!
--> NULL과 연산하면 결과 값은 무조건 NULL값이 나옵니다!
--> NULL과 비교를하면 결과 값은 무조건 FALSE가 나온다.

-- 직원테이블에서 직원ID, 보너스, 보너스두배 의 정보를 출력
-- 단 보너스두배의 정보는 UP_BONUS 로 별칭을 사용해서 출력
SELECT * FROM EMPLOYEES;

SELECT EMPLOYEE_ID, COMMISSION_PCT, COMMISSION_PCT*2 AS UP_BONUS
  FROM EMPLOYEES;

-- 문제 1에서 UP_BONUS의 결과 값을 출력을 해보고 이 결과 값이 왜 그렇게 나왔는지
-- 설명하기
-- NULL값은 완전히 비어있는 상태를 의미하기 때문에
-- NULL값은 연산자체가 불가능하다 그래서 결과값이 무조건 NULL이 나오기 때문이다!!

-- NULL값제외
SELECT EMPLOYEE_ID, COMMISSION_PCT, COMMISSION_PCT*2
  FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;








