-- CHAPTER 01.SELECT

-- �ּ�

select first_name from employees;

SELECT FIRST_NAME 
  FROM EMPLOYEES;
  
-- �������̺��� ������ �̸��� ������ ���
SELECT EMAIL FROM EMPLOYEES;

-- �������̺��� ����ID, FIRST_NAME, PHONE_NUMBER, SALARY(�޿�) ������ ���
SELECT EMPLOYEE_ID, FIRST_NAME, PHONE_NUMBER, SALARY
  FROM EMPLOYEES;

-- * ���ϱ�
-- select ���� * �� ���� �Ǹ� �ƽ�Ÿ����ũ ��� ���ϵ�ī��� ���Ѵ�.

-- * (�ƽ�Ÿ����ũ) - > ��ü�� �ǹ̸� �Ѵ�.
-- �������̺��� ��ü ������ ����ϱ�
SELECT *
  FROM EMPLOYEES;
  
-- �μ����̺��� ��ü ������ ����ϰ� ���� ������ ��Դϱ�?
SELECT *
  FROM DEPARTMENTS;
-- �μ��� �� 27���� �����Ǿ��ִ�.

-- �ǽ�1) �������̺��� ����ID, FIRST_NAME, �Ŵ���ID�� ���
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES;

-- �ǽ�2) �μ����̺��� �μ�ID, �μ���, ��ġID�� ���
SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID
  FROM DEPARTMENTS;

-- �������̺��� ������ �μ�ID�� ���
SELECT DEPARTMENT_ID
  FROM EMPLOYEES;
  
-- ������ �ߺ� �����ϱ�
-- DISTINCT : ������ �ߺ� ����

SELECT DISTINCT DEPARTMENT_ID
  FROM EMPLOYEES;

-- �������̺��� JOB_ID�� �÷��� �ߺ��� �����Ͽ� ���
SELECT DISTINCT JOB_ID
  FROM EMPLOYEES;
  
-- �������̺��� JOB_ID�� �μ�ID�� �ߺ��� �����Ͽ� ���
SELECT DISTINCT JOB_ID, DEPARTMENT_ID
  FROM EMPLOYEES;
-- DISTINCT �ڿ� 2�� �̻��� �÷��� ���� �Ǹ�
-- ���� �÷��� �ߺ��� �־ �ٸ� �� �÷��� ���� �ٸ��� �ٸ��� ����Ѵ�.

-- TIP:
--> �÷��� ���� ������ �����ϴ� (+, -, *, /)

-- �������̺��� ������ �̸�(FIRST_NAME)�� �޿��� ������ ���
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;
-- ������ �̸��� �޿��� ������ ������ ���
SELECT FIRST_NAME, SALARY, SALARY*12
  FROM EMPLOYEES;

-- ��Ī�� ����ϱ�
-- Alias ��� �ϸ� �Ѵ��� ���� ���� ���� �Ҽ� �ִ�.
-- AS Ű���带 ����ؼ� ��Ī�� �����Ѵ�.

-- ��Ī �����
-- 1. SELECT �÷� ��Ī
-- 2. SELECT �÷� "��Ī"
-- 3. SELECT �÷� AS ��Ī
-- 4. SELECT �÷� AS "��Ī"

SELECT FIRST_NAME AS "�̸�" , SALARY AS "�޿�", SALARY*12 AS "����"
  FROM EMPLOYEES;

-- �������̺��� ������ �̸��� �Ի���(HIRE_DATE), �Ի��� �������� ������ ���
SELECT FIRST_NAME �̸�, HIRE_DATE �Ի���, HIRE_DATE+1 �Ի��ϴ�����
  FROM EMPLOYEES;
  
  SELECT FIRST_NAME "�̸�", HIRE_DATE "�Ի���", HIRE_DATE+1 "�Ի��ϴ�����"
  FROM EMPLOYEES;

SELECT FIRST_NAME AS �̸�, HIRE_DATE AS �Ի���, HIRE_DATE+1 AS �Ի��ϴ�����
  FROM EMPLOYEES;

SELECT FIRST_NAME AS "�̸�", HIRE_DATE AS "�Ի���", HIRE_DATE+1 AS "�Ի��ϴ�����"
  FROM EMPLOYEES;

-- ORDER BY��
--> Ư¡:�÷��� �������� ���ĵ� ���·� ����ϰ��� �Ҷ� ����Ѵ�.
--> SQL����������� ���� �������� ���� �ȴ�.
--> ������ ���Ĺ���� �������� ������ �⺻������ ��������(ASC)�� ����ȴ�.
-- ���Ĺ��
-- ASC(Ascending) : �������� ���� (1, 2, 3, 4, 5, .....)
-- DESC(Descending) : �������� ���� (10, 9, 8, 7, 6, .....)

DESC EMPLOYEES;
-- DESC(DESCRIBE)
--> ���̺��� ������ Ȯ���ϴ� ��ɾ�

-- �������̺��� ��� ������ ������ ����ϴµ� �޿� �������� ������������ �����Ͽ� ���
SELECT * 
  FROM EMPLOYEES
ORDER BY SALARY ASC;

-- �������̺��� �ֱٿ� �Ի��� ��¥�� �������� ������ �̸��� �Ի糯¥�� ������ ���
SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
ORDER BY HIRE_DATE DESC;

-- �������̺��� ����ID, �μ�ID, �̸�, �޿� ������ ���
-- �� �μ�ID�� ������������ ����, �޿��� ������������ ����
SELECT EMPLOYEE_ID, DEPARTMENT_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
ORDER BY DEPARTMENT_ID ASC, SALARY DESC;
-- ���� �μ����� �ٹ��ϰ� �ִ� �����鳢�� �޿��� ���� ������� ���
--> ���� �μ����̵� ������������ ������ �Ŀ� �޿��� ������������ ���������� ������ �Ѱ�

--NULL�̶�?
--> NULL ���̶� �������� ���� ������ ��� �ִ� ���¸� ���մϴ�.
--> ���� �������� �ʰų� �������� ���� ���� �ǹ��մϴ�.
--> ���� 0�� �� ���ڿ� " "�� NULL���� �ƴմϴ�!
--> NULL�� �����ϸ� ��� ���� ������ NULL���� ���ɴϴ�!
--> NULL�� �񱳸��ϸ� ��� ���� ������ FALSE�� ���´�.

-- �������̺��� ����ID, ���ʽ�, ���ʽ��ι� �� ������ ���
-- �� ���ʽ��ι��� ������ UP_BONUS �� ��Ī�� ����ؼ� ���
SELECT * FROM EMPLOYEES;

SELECT EMPLOYEE_ID, COMMISSION_PCT, COMMISSION_PCT*2 AS UP_BONUS
  FROM EMPLOYEES;

-- ���� 1���� UP_BONUS�� ��� ���� ����� �غ��� �� ��� ���� �� �׷��� ���Դ���
-- �����ϱ�
-- NULL���� ������ ����ִ� ���¸� �ǹ��ϱ� ������
-- NULL���� ������ü�� �Ұ����ϴ� �׷��� ������� ������ NULL�� ������ �����̴�!!

-- NULL������
SELECT EMPLOYEE_ID, COMMISSION_PCT, COMMISSION_PCT*2
  FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;








