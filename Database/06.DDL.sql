-- CHAPTER 06. DDL(Data Difinition Language)

-- DDL이란?
-- 데이터 정의어로 테이블 같은 저장소 객체를 만들거나 수정하는 언어

CREATE TABLE TEST_수강생정보 (
    학생ID VARCHAR2(9),
    학생이름 VARCHAR2(50),
    소속반 VARCHAR2(5)
);
    
SELECT * FROM TEST_수강생정보;

-- 성적표 테이블을 확인해서 TEST_성적표 라는 테이블을 만들어보자
SELECT * FROM 성적표;

CREATE TABLE TEST_성적표(
    학생ID VARCHAR2(9),
    과목 VARCHAR2(30),
    성적 NUMBER
);

SELECT * FROM TEST_성적표;

CREATE TABLE MANGO_LOGIN(
    ID VARCHAR(20),
    PW VARCHAR(20),
    EMAIL VARCHAR(20),
    NAME VARCHAR(20)
);

-- 제약조건이란?
--> 테이블에 입력 가능한 데이터를 조건으로 제약하는 것
--> 데이터의 정확성을 유지하기 위한 목적으로 사용됨.
--> 제약 조건 지정 방식에 따라서 데이터의 수정이나 삭제 여부에 영향을 받음

-- [ 제약 조건의 종류 ]
-- PRIMARY KEY(PK) : 기본키, NOT NULL + UNIQUE -> NULL불가 + 중복불가
-- UNIQUE KEY(UK) : 유일키, NULL 값 입력 가능, 단 중복은 불가
-- NOT NULL : NULL값 불가능, 이 데이터는 꼭 들어가야 될 때 사용하는 것
-- CHECK : 지정한 데이터만 입력 가능
-- FOREIGN KEY(FK) : 외래키, 두 테이블을 연결하는 키

-- 제약조건 거는 방법
-- ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건이름 제약조건(해당컬럼);

-- 테이블에 PK 제약조건 지정하기
SELECT * FROM MANGO_LOGIN;

ALTER TABLE MANGO_LOGIN ADD CONSTRAINT MANGO_ID_PK PRIMARY KEY(ID);

-- 테이블에 UK 제약조건 지정하기
ALTER TABLE MANGO_LOGIN ADD CONSTRAINT EMAIL_UK UNIQUE(EMAIL);

-- 테이블에 CHECK 제약조건 지정하기
ALTER TABLE MANGO_LOGIN ADD CONSTRAINT PW_CHECK CHECK(LENGTH(PW) > 3);

-- 테이블에 FK 제약조건 지정하기
-- ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건이름 제약조건(해당컬럼)
-- REFERENCES 참조할 테이블명(참조할 컬럼);

ALTER TABLE TEST_성적표 ADD CONSTRAINT 학생ID_FK FOREIGN KEY(학생ID)
REFERENCES 수강생정보(학생ID);

-- 제약조건 변경
-- ALTER TABLE 테이블명 MODIFY 컬럼명 바꿀제약조건;

ALTER TABLE MANGO_LOGIN MODIFY NAME NOT NULL;

-- 제약조건 삭제
-- ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건 이름;
ALTER TABLE MANGO_LOGIN DROP CONSTRAINT PW_CHECK;

-- 데이터 무결성이란?
--> 데이터의 결함이 없는 상태를 의미
--> 즉, 데이터가 정확하고 유효하게 유지 된 상태

-- 무결성 제약조건 종류
-- 개체 무결성(PK) : 기본키 제약이라고 하며, 하나의 테이블에 중복된 행이 존재하지 않도록 규정
-- 참조 무결성(FK) : 행을 입력, 수정, 삭제할때 연관되는 다른 테이블과의 데이터가
-- 정확하게 유지되도록 규정
-- 참조 관계에 있는 두 테이블의 데이터가 항상 

CREATE TABLE TB_TEST1(
    PK테스트 NUMBER PRIMARY KEY,
    UK테스트 NUMBER UNIQUE,
    NL테스트 NUMBER NOT NULL,
    CK테스트 NUMBER CHECK(LENGTH(CK테스트) > 5)
);

CREATE TABLE TB_TEST2(
    PK테스트 NUMBER,
    UK테스트 NUMBER,
    NL테스트 NUMBER NOT NULL,
    CK테스트 NUMBER,
    FK테스트 NUMBER,
    -- 제약조건을 추가
    -- CONSTRAINT 제약조건명 제약조건(컬럼)
    CONSTRAINT PK테스트_PK PRIMARY KEY(PK테스트),
    CONSTRAINT UK테스트_UK UNIQUE(UK테스트),
    CONSTRAINT CK테스트_CK CHECK(CK테스트 > 0),
    CONSTRAINT FK테스트_FK FOREIGN KEY(FK테스트) REFERENCES TB_TEST1(PK테스트)
);

-- 테이블의 컬럼 추가하기
-- ALTER TABLE 테이블명 ADD 컬럼명 자료형(크기);
ALTER TABLE MANGO_LOGIN ADD PHONE_NUMBER VARCHAR2(10);

-- 컬럼 이름 변경하기
-- ALTER TABLE 테이블명 RENAME COLUMN 기존컬럼명 TO 바꿀컬럼명;
ALTER TABLE MANGO_LOGIN RENAME COLUMN PHONE_NUMBER TO TEL;

-- 컬럼의 자료형 변경하기
-- ALTER TABLE 테이블명 MODIFY 컬럼명 바꿀 제약조건(길이);
ALTER TABLE MANGO_LOGIN MODIFY TEL VARCHAR2(20);

-- 특정 컬럼 삭제하기
-- ALTER TABLE 테이블명 DROP COLUMN 컬럼명;
ALTER TABLE MANGO_LOGIN DROP COLUMN TEL;

-- 테이블 이름 변경하기
-- RENAME 기존테이블이름 TO 바꿀테이블이름;
RENAME MANGO_LOGIN TO YOO_LOGIN;

-- 테이블 삭제
-- DROP TABLE 테이블이름;
DROP TABLE TEST_수강생정보;

-- TRUNCATE : 데이터를 영구 삭제

-- DELETE : 데이터 삭제

-- 테이블 복사하는 쿼리문
CREATE TABLE DROP_성적표 AS SELECT * FROM 성적표;
SELECT * FROM DROP_성적표;

DELETE DROP_성적표;

ROLLBACK; -- 되돌리는 명령어

TRUNCATE TABLE DROP_성적표;

-- 테이블 생성 실습2
CREATE TABLE MANGO_JOIN(
    ID VARCHAR2(20) PRIMARY KEY,
    PW VARCHAR2(20) NOT NULL,
    NAME VARCHAR2(10) NOT NULL,
    JOIN_DATE DATE,
    AGE NUMBER(3),
    TEL VARCHAR2(20),
    EMAIL VARCHAR2(50) UNIQUE
);

SELECT * FROM MANGO_JOIN;




