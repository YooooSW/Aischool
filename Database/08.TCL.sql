-- CHAPTER 08. TCL(Transaction Control Language)

-- 트랜잭션이란?
--> 데이터베이스의 상태를 변화시키기 위해서 수행하는 최소 수행단위
--> 즉, 업무를 처리하기 위한 최소 수행 단위

-- 트랜잭션의 4가지 특성 - ACID
-- Automicity(원자성) : All or Nothing, 모두 실행되거나 전혀 실행되지않아야한다.
-- Consistency(일관성) : 언제나 일관성 있는 상태를 유지하는것
-- Isolation(고립성) : 트랜잭션 실행 시 다른 트랜잭션의 영향을 받지않는것
-- Durability(지속성) : 성공적으로 수행된 트랜잭션은 영원히 반영되는것

-- TCL 명령어
-- COMMIT    : DB에 영구적으로 저장, 마지막 COMMIT 시점 이후의 트랜잭션 결과를 저장
-- ROLLBACK  : 트랜잭션을 취소, 마지막 COMMIT 시점까지만 복구
-- SAVEPOINT : 하나의 트랜잭션을 작게 분할하여 저장하는 기능을 수행하는 명령어

-- 테이블 복사
CREATE TABLE TCL_EMP AS SELECT * FROM EMPLOYEES;
-- 제약조건 PK, FK 까지는 복사 X
-- 오로지 데이터만 복사된다.

SELECT * FROM TCL_EMP;

DELETE FROM TCL_EMP
 WHERE EMPLOYEE_ID = '100';

ROLLBACK; -- 되돌리는 명령어

COMMIT;

DELETE FROM TCL_EMP
 WHERE EMPLOYEE_ID = 101;

SELECT * FROM TCL_EMP;

COMMIT;

-- 읽기 일관성이란?
-- 트랜잭션이 완료되기 전까지 데이터를 직접 조작하는 세션(SESSION) 외에
-- 다른 세션에서는 데이터 조작 전 상태의 데이터만 조회 가능
-- 즉, 확정된 데이터만 검색이 된다.
-- 이것을 읽기 일관성을 보장한다 라고한다.

-- LOCK이란?
--> 트랜세션에서 조작중인 데이터는 트랜잭션이 완료(COMMIT, ROLLBACK) 되기전까지는
--> 다른 세션에서는 해당 데이터를 조작할 수 없는 상태
--> 둘 이상의 세션이 같은 행을 조작하려고 할 때 충돌하는 현상

-- 테이블 복사 
CREATE TABLE TCL_DEMP AS SELECT * FROM DEPARTMENTS;

SELECT * FROM TCL_DEMP;

UPDATE TCL_DEMP
 SET DEPARTMENT_NAME = 'BIGDATE'
 WHERE DEPARTMENT_ID = 100;

-- 두개 세션이 접속을 했을때 서로 다른 세션에서 같은행을 조작을 하게되면
-- 먼저 조작을 하게된 세션이 커밋을 하기전에는 작업X






