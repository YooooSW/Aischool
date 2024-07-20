-- CHAPTER 07. DML(Data Manipulation Language)

-- DML�̶�?
--> ������ ���۾�� ���̺� �����͸� ��ȸ, �߰�, ����, ���� �Ҷ� ����ϴ� ���Ǿ��̴�.
--> ���̺��� ���ϴ� �����͸� �Է�, ����, �����Ѵ�.

-- DML�� ����
-- SELECT : ������ ��ȸ
-- INSERT : ������ �߰�
-- DELETE : ������ ����
-- UPDATE : ������ ����

-- INSERT �����
-- INSERT INTO ���̺�� (�÷�1, �÷�2, ..., �÷�N)
-- VALUES (��1, ��2, ..., ��N)
--> INSERT�� �Է��� �÷��� VALUES�� �Է��� ���� ������ �ڷ����� �°� ��ߵȴ�.

-- INSERT INTO ���̺��
-- VALUES (��,...)
--> INSERT�� �÷�����Ʈ ������ DBMS�� �ش� ���̺��� �÷��� �� �ۼ��Ѱ����� �����ؼ�
--> �� ���̺� �÷� ������ �ڷ����� �°� �� �ۼ��� �ؾ��Ѵ�.

SELECT * FROM MANGO_JOIN;

-- 1. ���� ���� �ֱ�
INSERT INTO MANGO_JOIN(ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
VALUES ('MANGO01', '1234', '���¿�', SYSDATE, 29, '010-2681-8652', 'yoo@naver.com');

-- 2. ���� ¦�� ���� �ֱ�
INSERT INTO MANGO_JOIN(ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
VALUES ('MANGO02', '1234', '�ֿ�ȭ', SYSDATE, 25, NULL, '');

-- 3. ���� ģ���� ������ �ֱ�
-- ��ȭ��ȣ�� �̸��� ������ NULL������ �Է�
INSERT INTO MANGO_JOIN(ID, PW, NAME, JOIN_DATE, AGE)
VALUES ('MANGO03', '22222', '�̵���', SYSDATE, 22);

SELECT * FROM MANGO_JOIN;
-- ���̺����
DROP TABLE MANGO_JOIN;

-- ���̺� ������ ���� ����Ʈ 

-- 1. �÷�����Ʈ�� �Է� ���� ������ �ٸ� ���
INSERT INTO MANGO_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM', 'N');
 
--  SQL ����: ORA-00913: too many values 
--> �÷� ����Ʈ�� ������ �Է� �� ������ ��ġ�ؾ� �Ѵ�!

-- 2. �ĺ��ڿ� NULL�� �Է��� ���
INSERT INTO MANGO_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES (NULL, '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."ID")
--> �÷��� ���� �������ǿ� �°� �ۼ� �ؾ��� (�ĺ��ڴ� NOT NULL + UNIQUE �ߺ��Ұ�)

-- 3. NOT NULL�� �÷��� NULL�� ���� ���
INSERT INTO MANGO_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', NULL , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."NAME")
--> �÷��� ���� �������ǿ� �°� �ۼ� �ؾ��� ( NOT NULL ���� )

-- 4. �ڷ����� ���� �ʰ� �Է� ���� ���� ���
INSERT INTO MANGO_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, '29��', '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01722: invalid number
--> �÷��� ���� �ڷ����� �°� �ۼ��� �Ǿ� �Ѵ�. (AGE�� ������ �ڷ���)

-- 5. �ĺ��� �÷��� �ߺ� ���� ���� ���� ���
INSERT INTO MANGO_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');
 
-- unique constraint (HR.SYS_C007110) violated
--> ���� �� ���¿��� �ѹ��� ������ �Ǹ� �ĺ��ڰ� ���� �ߺ��� �Ǽ� ������ ��

SELECT * FROM MANGO_JOIN;

-- �÷�����Ʈ�� ���� �ʰ� INSERT �ϴ¹��
-- INSERT INTO MANGO_JOIN
-- VALUES (�÷�����Ʈ �������);
INSERT INTO MANGO_JOIN
VALUES ('MANGO04', '33333', '�Ź���', SYSDATE, 20, '010-2295-0023', 'SIN@NAVER.COM');

-- �ǽ�
CREATE TABLE �¿�_SONGLIST(
    NO NUMBER(3) PRIMARY KEY,
    TITLE VARCHAR2(20) NOT NULL,
    SINGER VARCHAR2(20) NOT NULL,
    GENDER VARCHAR2(10) CHECK(GENDER IN ('����', '����'))
); 

SELECT * FROM �¿�_SONGLIST;

INSERT INTO �¿�_SONGLIST
VALUES ('1', '������', '������', '����');

INSERT INTO �¿�_SONGLIST
VALUES ('2', 'ETA', '������', '����');

INSERT INTO �¿�_SONGLIST
VALUES ('3', 'DITTO', '������', '����');


-- UPDATE : ���̺��� �����͸� �����ϰ� ������ ���

-- �����
-- UPDATE   ���̺��
-- SET      ������ �÷� = �����Ͱ�, .......
-- WHERE    �����͸� ������ ���� �����ϱ� ���� ���ǽ�;
--> ** WHERE �������� ������ ��� ���̺� �� ����� ��� �÷��� �����Ͱ� ������ �ȴ�.

SELECT * FROM MANGO_JOIN;

UPDATE MANGO_JOIN
SET    AGE = 24
WHERE  ID = 'MANGO03';

--> ������ �ɶ��� PK�� �÷��� �����ϴ°��� �ùٸ� ����̴�.

-- DELETE : �����͸� �����Ҷ� ����ϴ� ��ɿ�
-- �����
-- DELETE FROM ���̺��
-- WHERE    ������ ��� ���� �����ϱ� ���� ���ǽ�;
-- ** WHERE �������� ������ ��� ���̺��� ��� �����Ͱ� ������ �ȴ�.

-- 28�� ������ ȸ������ ������ ����
DELETE FROM MANGO_JOIN
WHERE AGE <= 28;




