-- CHAPTER 06. DDL(Data Difinition Language)

-- DDL�̶�?
-- ������ ���Ǿ�� ���̺� ���� ����� ��ü�� ����ų� �����ϴ� ���

CREATE TABLE TEST_���������� (
    �л�ID VARCHAR2(9),
    �л��̸� VARCHAR2(50),
    �Ҽӹ� VARCHAR2(5)
);
    
SELECT * FROM TEST_����������;

-- ����ǥ ���̺��� Ȯ���ؼ� TEST_����ǥ ��� ���̺��� ������
SELECT * FROM ����ǥ;

CREATE TABLE TEST_����ǥ(
    �л�ID VARCHAR2(9),
    ���� VARCHAR2(30),
    ���� NUMBER
);

SELECT * FROM TEST_����ǥ;

CREATE TABLE MANGO_LOGIN(
    ID VARCHAR(20),
    PW VARCHAR(20),
    EMAIL VARCHAR(20),
    NAME VARCHAR(20)
);

-- ���������̶�?
--> ���̺� �Է� ������ �����͸� �������� �����ϴ� ��
--> �������� ��Ȯ���� �����ϱ� ���� �������� ����.
--> ���� ���� ���� ��Ŀ� ���� �������� �����̳� ���� ���ο� ������ ����

-- [ ���� ������ ���� ]
-- PRIMARY KEY(PK) : �⺻Ű, NOT NULL + UNIQUE -> NULL�Ұ� + �ߺ��Ұ�
-- UNIQUE KEY(UK) : ����Ű, NULL �� �Է� ����, �� �ߺ��� �Ұ�
-- NOT NULL : NULL�� �Ұ���, �� �����ʹ� �� ���� �� �� ����ϴ� ��
-- CHECK : ������ �����͸� �Է� ����
-- FOREIGN KEY(FK) : �ܷ�Ű, �� ���̺��� �����ϴ� Ű

-- �������� �Ŵ� ���
-- ALTER TABLE ���̺�� ADD CONSTRAINT ���������̸� ��������(�ش��÷�);

-- ���̺� PK �������� �����ϱ�
SELECT * FROM MANGO_LOGIN;

ALTER TABLE MANGO_LOGIN ADD CONSTRAINT MANGO_ID_PK PRIMARY KEY(ID);

-- ���̺� UK �������� �����ϱ�
ALTER TABLE MANGO_LOGIN ADD CONSTRAINT EMAIL_UK UNIQUE(EMAIL);

-- ���̺� CHECK �������� �����ϱ�
ALTER TABLE MANGO_LOGIN ADD CONSTRAINT PW_CHECK CHECK(LENGTH(PW) > 3);

-- ���̺� FK �������� �����ϱ�
-- ALTER TABLE ���̺�� ADD CONSTRAINT ���������̸� ��������(�ش��÷�)
-- REFERENCES ������ ���̺��(������ �÷�);

ALTER TABLE TEST_����ǥ ADD CONSTRAINT �л�ID_FK FOREIGN KEY(�л�ID)
REFERENCES ����������(�л�ID);

-- �������� ����
-- ALTER TABLE ���̺�� MODIFY �÷��� �ٲ���������;

ALTER TABLE MANGO_LOGIN MODIFY NAME NOT NULL;

-- �������� ����
-- ALTER TABLE ���̺�� DROP CONSTRAINT �������� �̸�;
ALTER TABLE MANGO_LOGIN DROP CONSTRAINT PW_CHECK;

-- ������ ���Ἲ�̶�?
--> �������� ������ ���� ���¸� �ǹ�
--> ��, �����Ͱ� ��Ȯ�ϰ� ��ȿ�ϰ� ���� �� ����

-- ���Ἲ �������� ����
-- ��ü ���Ἲ(PK) : �⺻Ű �����̶�� �ϸ�, �ϳ��� ���̺� �ߺ��� ���� �������� �ʵ��� ����
-- ���� ���Ἲ(FK) : ���� �Է�, ����, �����Ҷ� �����Ǵ� �ٸ� ���̺���� �����Ͱ�
-- ��Ȯ�ϰ� �����ǵ��� ����
-- ���� ���迡 �ִ� �� ���̺��� �����Ͱ� �׻� 

CREATE TABLE TB_TEST1(
    PK�׽�Ʈ NUMBER PRIMARY KEY,
    UK�׽�Ʈ NUMBER UNIQUE,
    NL�׽�Ʈ NUMBER NOT NULL,
    CK�׽�Ʈ NUMBER CHECK(LENGTH(CK�׽�Ʈ) > 5)
);

CREATE TABLE TB_TEST2(
    PK�׽�Ʈ NUMBER,
    UK�׽�Ʈ NUMBER,
    NL�׽�Ʈ NUMBER NOT NULL,
    CK�׽�Ʈ NUMBER,
    FK�׽�Ʈ NUMBER,
    -- ���������� �߰�
    -- CONSTRAINT �������Ǹ� ��������(�÷�)
    CONSTRAINT PK�׽�Ʈ_PK PRIMARY KEY(PK�׽�Ʈ),
    CONSTRAINT UK�׽�Ʈ_UK UNIQUE(UK�׽�Ʈ),
    CONSTRAINT CK�׽�Ʈ_CK CHECK(CK�׽�Ʈ > 0),
    CONSTRAINT FK�׽�Ʈ_FK FOREIGN KEY(FK�׽�Ʈ) REFERENCES TB_TEST1(PK�׽�Ʈ)
);

-- ���̺��� �÷� �߰��ϱ�
-- ALTER TABLE ���̺�� ADD �÷��� �ڷ���(ũ��);
ALTER TABLE MANGO_LOGIN ADD PHONE_NUMBER VARCHAR2(10);

-- �÷� �̸� �����ϱ�
-- ALTER TABLE ���̺�� RENAME COLUMN �����÷��� TO �ٲ��÷���;
ALTER TABLE MANGO_LOGIN RENAME COLUMN PHONE_NUMBER TO TEL;

-- �÷��� �ڷ��� �����ϱ�
-- ALTER TABLE ���̺�� MODIFY �÷��� �ٲ� ��������(����);
ALTER TABLE MANGO_LOGIN MODIFY TEL VARCHAR2(20);

-- Ư�� �÷� �����ϱ�
-- ALTER TABLE ���̺�� DROP COLUMN �÷���;
ALTER TABLE MANGO_LOGIN DROP COLUMN TEL;

-- ���̺� �̸� �����ϱ�
-- RENAME �������̺��̸� TO �ٲ����̺��̸�;
RENAME MANGO_LOGIN TO YOO_LOGIN;

-- ���̺� ����
-- DROP TABLE ���̺��̸�;
DROP TABLE TEST_����������;

-- TRUNCATE : �����͸� ���� ����

-- DELETE : ������ ����

-- ���̺� �����ϴ� ������
CREATE TABLE DROP_����ǥ AS SELECT * FROM ����ǥ;
SELECT * FROM DROP_����ǥ;

DELETE DROP_����ǥ;

ROLLBACK; -- �ǵ����� ��ɾ�

TRUNCATE TABLE DROP_����ǥ;

-- ���̺� ���� �ǽ�2
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




