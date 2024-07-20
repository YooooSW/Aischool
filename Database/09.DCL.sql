-- CHAPTER 09. DCL(Data Control Language)

-- DCL�̶�?
--> �����ͺ��̽��� ������ �ϰų� ��ü�� ������ �ִ� ���� ������ �ϴ� ���

-- DCL ��ɾ� ����
-- GRANT  : ������ �ο��ϴ� ��ɾ�
-- REVOKE : ������ ȸ���ϴ� ��ɾ�
-- ROLE   : ������ ��� �ο��Ҷ� ����ϴ� ��ɾ�

-- �����(USER)��?
-- �����ͺ��̽��� �����Ͽ� �����͸� �����ϴ� '����'�� �����(USER)��� �Ѵ�.

-- �����(USER) �������
-- CREATE USER    ������̸�
-- IDENTIFIED BY  �н�����

-- ���Ѻο�
-- GRANT  �ý��۱���
-- TO     USER;

-- ����ȸ��
-- REVOKE �ý��۱���
-- FROM   USER;

CREATE TABLE TEST_TB(
    ID VARCHAR2(10)
);

-- ORA-01031 : insufficient privileges
--> ������ ������ϴ�.

-- ROLE�̶�?
--> ���� ������ �ѹ��� �ο� �ϱ� ���� ����Ѵ�.
--> ����� ������ ���ѳ��� ��� ���� ROLE�̶�� �������� �ѹ��� ������ ��� ���

-- ROLE�� ����
-- CONNECT  : �����ͺ��̽��� ���ӿ� �ʿ��� ������ ���� ������
-- RESOURCE : ���̺�, ������ � ��ü�� ������ �� �ִ� ������ ���� ������
-- DBA      : �����ͺ��̽��� �����ϴ� ��κ��� �ý��� ����, *�Ժη� �ǵ�� X

-- �������� ������ �ִ� ���
-- GRANT CONNECT, RESOURCE TO USER;

-- ��ü �����̶�?
--> Ư�� ������� ��ü(���̺�, ������, ���)�� ������ �ִ� ���̴�.
--> �� HR������ ���̺��� DCLTEST ����ڰ� SELECT�� UPDATE��� DML �۾���
-- �����ϵ��� ��� �� �� �ְ� �ϴ� ���̴�.

SELECT * FROM HR.EMPLOYEES;

-- ��ü ���� �����
-- GRANT    �ý��� ����
-- ON       ��Ű��.��ü�̸�
-- TO       USER;

UPDATE HR.EMPLOYEES
SET FIRST_NAME = '��', LAST_NAME = '�¿�'
WHERE EMPLOYEE_ID = 100;

SELECT * FROM HR.EMPLOYEES;

SELECT * FROM EMPLOYEES;









