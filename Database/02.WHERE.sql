-- CHAPTER 02.WHERE

-- WHERE �� �⺻ �����
--3. SELECT ��ȸ�� �÷� ��1, .....��ȸ�� �÷��� N
--1.   FROM ��ȸ�� ���̺� ��
--2.  WHERE ��ȸ�� ���� �����ϱ� ���� ���� ��

-- �ǽ�) �������̺��� ����ID�� 105�� ������ FIRST_NAME�� LAST_NAME�� ���
SELECT FIRST_NAME, LAST_NAME
  FROM EMPLOYEES
 WHERE EMPLOYEE_ID = 105;
 
-- �ǽ�2) �μ����̺��� �Ŵ������̵� 100�� �μ��̸��� �μ����̵� ���
SELECT DEPARTMENT_NAME, DEPARTMENT_ID
  FROM DEPARTMENTS
 WHERE MANAGER_ID = 100;

-- �������̺��� �޿��� 9000�� ������ ����ID, �����̸�, �޿������� ���
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY = 9000;

-- ��� ������ < +, -, *, / >
SELECT SALARY*2
  FROM EMPLOYEES;
  
-- �� ������ [ >(�ʰ�), >=(�̻�), <(�̸�), <=(����) ]

-- �������̺��� �޿��� 5000������ ������ �̸��� �޿� ������ ���
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY <=5000;
 
-- �������̺��� ������ 50000 ������ �������� �̸��� ������ ���
SELECT FIRST_NAME, SALARY*12
  FROM EMPLOYEES
 WHERE SALARY*12 <= 50000;

-- � �� ������ (���� �ƴϸ� ���� �ʴ�)

-- �ǽ�1)
SELECT * FROM EMPLOYEES;
-- �������̺��� �������̵� IT_PROG �� �ƴ� ������ �̸��� �������̵� ���
SELECT FIRST_NAME, JOB_ID
  FROM EMPLOYEES
 WHERE JOB_ID != 'IT_PROG';

-- �������� (�� �ƴϸ� ����)
--> 2���̻��� ������ ������ �̾��ִ� ������ �ϴ� �������Դϴ�.

-- AND : ������ ��� �����ϴ� ��� TRUE���� ��ȯ
-- OR  : �ϳ��� �����̶� �����ϸ� TRUE���� ��ȯ

-- �������̺��� �μ����̵� 90�̰� �޿��� 5000�̻��� ������
-- �������̵�� �����̸��� ���

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID, SALARY
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID = 90 
   AND SALARY >= 5000;

-- �������̺��� �μ����̵� 100�̰ų�
-- �Ի����� 06�� 02�� 02�� ���Ŀ� �Ի��� ������ �̸��� �Ի��� ������ ���
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID = 100
    OR HIRE_DATE >= '06-02-02';

-- �������̺��� �μ�ID�� 100�̰ų� 90�� ���� �߿���
-- ����ID�� 101�� ������ ����ID, �̸�, ������ ���
-- ��, ������ ANNSAL �̶�� ��Ī�� ����ؼ� ���
-- ��Ʈ > AND > OR
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY*12 AS AnnSal, DEPARTMENT_ID
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID IN (100, 90)
   AND EMPLOYEE_ID = 101;
   
-- AND�����ڰ� OR�����ں��� �켱������ ���Ƽ� ������ �켱������ ����
-- ������� �޶�����.

-- NULL���� ������
-- IS NULL : ������ ���� NULL�� ���� ��ȸ
-- IS NOT NULL : ������ ���� NULL�� �ƴ� ���� ��ȸ

-- �������̺��� ���ʽ��� �ִ� ������ �̸��� ���ʽ� ������ ���
SELECT * FROM EMPLOYEES;
 
SELECT FIRST_NAME, COMMISSION_PCT
  FROM EMPLOYEES
 WHERE COMMISSION_PCT IS NOT NULL;
 
-- ����) DEPARTMENT_ID�� ���� ������ �̸���?
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID IS NULL;
 
-- SQL������
--> SQL���� ����Ҽ� �ִ� �����ڴ�.

--> IN, BETWEEN, LIKE

-- IN : Ư�� �÷��� ���Ե� �����͸� ������ ��ȸ�� �� Ȱ��

-- ���� ���̺��� �μ�ID�� 30�̰ų� 50�̰ų� 90�� ������ ��� ������ ���
SELECT *
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID IN (30, 50, 90);
 
-- IN �����ڸ� Ȱ��
 
-- �������̺��� �Ŵ��� ���̵� 100, 102, 103�� ������ �̸��� �Ŵ��� ���̵� ���
SELECT FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES
 WHERE MANAGER_ID IN (100, 102, 103, NULL);

-- NOT IN
--> IN �ڿ� ���ǿ� �ش����� �ʴ� �����͸� ���
--> != + AND
--> NOT IN�� ����Ҷ��� NULL���� �ְ� �Ǹ�

-- �������̺��� �Ŵ��� ���̵� 100, 120, 121�� �ƴ� ��������
-- �̸��� �Ŵ��� ���̵� ���
SELECT FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES
 WHERE MANAGER_ID NOT IN (100, 120, 121);

-- �ǽ�) �������̺��� �������̵� AD_VP�̰ų� ST_MAN�� ������
-- �̸��� �������̵� ���
SELECT FIRST_NAME, JOB_ID
  FROM EMPLOYEES
 WHERE JOB_ID IN ('AD_VP', 'ST_MAN');
 
-- �������̺��� �Ŵ������̵� 145, 146, 147, 148, 149�� �ƴ� ������
-- �̸��� �Ŵ������̵� ���
SELECT FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES
 WHERE MANAGER_ID NOT IN (145, 146, 147, 148, 149);
 
-- BETWEEN A AND B
--> ���� ���� ���� �����͸� ��ȸ�� �� ���
--> BETWEEN �ּҰ� AND �ִ밪
--> Ư�� �� ���� �ּ�, �ְ� ������ �����Ͽ� �ش� ���� ���� �����͸� ��ȸ

-- �������̺��� �޿��� 10000 �̻� 20000 ������ ������ �̸��� �޿��� ������ ���
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY BETWEEN 10000 AND 20000;
 
--> BETWEEN �ּҰ� �̻� AND �ִ밪 ���� �Դϴ�.

-- �������̺��� 05�⿡ �Ի��� ������ �̸��� �Ի����� ���
-- 05/01/01 ~ 05/12/31
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE HIRE_DATE BETWEEN '05-01-01' AND '05-12-31';
 
-- LIKE ������
-- �Ϻ� ���ڿ��� ���Ե� �����͸� ��ȸ�Ҷ� ���
-- %, _ ��� ���ϵ� ī�带 �̿��ؼ� ��Ī������ �����մϴ�.

-- % : ���̿� ������� ��� ���� �����͸� �ǹ�
-- _ : � ���̵� ������� �Ѱ��� ���� �����͸� �ǹ�

SELECT * FROM EMPLOYEES;
-- �������̺��� �ڵ�����ȣ�� 650���� �����ϴ� ������ �̸��� �ڵ�����ȣ�� ���
SELECT FIRST_NAME, PHONE_NUMBER
  FROM EMPLOYEES
 WHERE PHONE_NUMBER LIKE '650%';

-- 1) �������̺��� �̸��� S�� �����ϰ� n���� ������ ������ �̸�ã��
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE FIRST_NAME LIKE 'S%_n';
 
-- 2) �������̺��� �̸��� it���� ������ �� 4������ ������ �̸� ã��
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE FIRST_NAME LIKE '__it';

-- 3) �������̺��� �̸��� �ι�° ���ڰ� e�� ������ �̸� ã��
SELECT FIRST_NAME
  FROM EMPLOYEES
 WHERE FIRST_NAME LIKE '_e%';

-- 4) �������̺��� 01���� �Ի��� ������ �̸��� �Ի糯¥ ã��
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE HIRE_DATE LIKE '01%';




 
 
 
 
 
 
 
