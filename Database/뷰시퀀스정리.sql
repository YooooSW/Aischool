-- ��ü(object)

-- View��?
-- �ϳ� �̻��� ���̺��� ���� ������ ���� ��������� '������ ���̺�'

-- ���� ��� ����
-- ���� : ���� ����ϴ� SELECT ������ �����ϱ� ���� ���
-- ���ȼ� : ���̺��� Ư�� �����͸� �����Ű�� �ʱ� ���� ���

-- �� ���� �ϴ� ���
-- CREATE VIEW �� �̸�
-- AS ������ SELECT��

-- ������� ���� (����ID, �̸�, �̸���, �������̵�, �޿�)
SELECT EMPLOYEE_ID
     , FIRST_NAME
     , LAST_NAME
     , EMAIL
     , JOB_ID
     , SALARY
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID = 100;
 
-- �� ���� : VIEW_EMP100
CREATE VIEW VIEW_EMP100
AS SELECT EMPLOYEE_ID
     , FIRST_NAME
     , LAST_NAME
     , EMAIL
     , JOB_ID
     , SALARY
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID = 100;

-- ������ ���̺� ��ȸ
SELECT * FROM VIEW_EMP100;



-- ��������?
-- Ư�� ��Ģ�� �´� ���� ���ڸ� �����ϴ� ��ü
-- ��� ����ǥó�� ��� ���� ��ȣ�� ������ִ� ����
-- �ַ� PK �÷����� ������ ���� ���鶧 Ȱ��

-- ������ �����
-- �������̸�.CURRVAL : ������ ���� ��ȣ�� ��ȯ
-- �������̸�.NEXTVAL : ���� ��ȣ�� ��ȯ

-- ������ ����
CREATE SEQUENCE SEQ_DBWAN
    INCREMENT BY 1 -- 1�� ���� �ɼ�
    START WITH 10  -- ���۹�ȣ�� 10����
    MAXVALUE 20    -- 20������ ��ȣ ����
    MINVALUE 0
    NOCYCLE ;      -- 20���� �����ϸ� �ߴ�
 
-- ������ ��ȸ
SELECT * FROM USER_SEQUENCES;

CREATE TABLE WAN_SEQUENCE (
    ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(10),
    CLASS VARCHAR2(50)
);

-- ������ Ȱ���غ���
INSERT INTO WAN_SEQUENCE (ID, NAME, CLASS)
VALUES (SEQ_DBWAN.NEXTVAL, '���¿�', '����ݽ�����');

SELECT * FROM WAN_SEQUENCE;

INSERT INTO WAN_SEQUENCE (ID, NAME, CLASS)
VALUES (SEQ_DBWAN.NEXTVAL, '�ֿ�ȭ', '����ݽ�����');

