-- CHAPTER 10. ��������

-- ����������?
--> SQL���� �����ϴµ� �ʿ��� �����͸� �߰��� ��ȸ�ϱ� ����
-- SQL ���ο��� ����ϴ� SELECT���� �ǹ��Ѵ�.
-- ���������� ���� ���� �ȿ� ���Ե� �������� ����

-- �������� : ���������� ������� ����Ͽ� ����� �����ϴ� ����
-- �������� : ���������� ���ǽĿ� ���� ���� �ǹ�


-- �������̺��� FIRST_NAME�� 'Jack'�� �޿� ������ ���
SELECT SALARY
  FROM EMPLOYEES
 WHERE FIRST_NAME = 'Jack';
 
-- Jack�̶�� ������ �޿����� ���� ������ �̸��� �޿��� ���
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY <= 8400;
 
-- �������� ���
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY < (SELECT SALARY
                   FROM EMPLOYEES
                  WHERE FIRST_NAME = 'Jack');
                  
-- 1. ���̺��� ���� Ȯ��
-- 2. ������ ������ �Ǵ� James�� �޿��� ������ Ȯ��(��������)
-- 3. 2���� ������� ������ �������� ���� ��� ����

-- �������̺��� James�� �޿����� ���� ������ �̸��� �޿� ������ ��ȸ
-- James��� �����θ��̶� �����߻� MIN(SALARY)����Ͽ� �����ذ�
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY < (SELECT MIN(SALARY)
                   FROM EMPLOYEES
                  WHERE FIRST_NAME = 'James');

-- ORA-01427: single-row subquery returns more than one row
--> ������ ���������� �ϳ��� �ุ ����� �� �� �ִ�.

-- ���������� Ư¡
-- 1. ���������� �����ڿ� ���� �� �Ǵ� ��ȸ ����� �����ʿ� ���̸� ()�� ��� ����Ѵ�.
-- 2. ���������� SELECT���� ����� �÷���
-- ���������� �� ���� ���� �ڷ����� ������ �����ؾ��Ѵ�.
-- 3. ���������� �ִ� SELECT���� ��� �� ���� �Բ� ����ϴ� ���������� ������ ������
-- ȣȯ �����ؾ��Ѵ�.
--> ��, �� �ϳ��� �����ͷθ� ������ ������ �����ڶ�� ���������� ��� �� ���� �ϳ����߸� �Ѵ�.
--> �����ڿ� �Բ� ��ȣ �ۿ��ϴ� ��Ŀ� ���� ������ ���������� ���� �� ���������� ������.

-- ������ ����������?
--> ���� ����� �� �ϳ��� ������ ������ ��������
--> =, >, >=, <, <=, <>, !=, ^= (������ ������)

-- �������̺��� Nancy���� ���� �Ի��� ������ �̸��� �Ի����� ��ȸ

-- 1. ������ �Ǵ� Nancy�� �Ի����� ������ ���(��������)
-- 2. 1������ ������ ���������� �̿��ؼ� ����� ���
SELECT HIRE_DATE
  FROM EMPLOYEES
 WHERE FIRST_NAME = 'Nancy'; -- 2002-08-17

SELECT FIRST_NAME, HIRE_DATE
  FROM EMPLOYEES
 WHERE HIRE_DATE < (SELECT HIRE_DATE
                      FROM EMPLOYEES
                     WHERE FIRST_NAME = 'Nancy');
                    
-- �������̺��� ��� �޿����� ���� �޿��� �޴� ������ �̸��� �޿������� ��ȸ
SELECT FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

-- ������ �����ڷδ� �ϳ��� ��� ���� �񱳰� �ȴ�.
-- ���������� ��� ���� 2�� �̻��̸� ������ �����ڷδ� ��X
-- �׷��� ������ �����ڷ� �񱳸� �ؾ��Ѵ�.

-- ������ ����������?
--> ���� ��� ���� �������� ������ ��������
-- ������ �����ڴ� ����� �� ���� ������ �����ڸ� ����ؾ��Ѵ�.

-- ������ �������� ����
-- IN : ���������� �����Ͱ� ���������� ��� �� �ϳ��� ��ġ�� �����Ͱ� ������ TRUE�� ��ȯ
--> IN (��������)
-- ANY : ���������� ���ǽ��� �����ϴ� ���������� ����� �ϳ� �̻��̸� TRUE�� ��ȯ
--> �񱳿����� ANY (��������)
-- ALL : ���������� ���ǽ��� ���������� ��� ��ΰ� �����ϸ� TRUE�� ��ȯ
--> �񱳿����� ALL (��������)
-- EXISTS : ���� ���� ��� ���� �����ϴ��� ���θ� Ȯ�� (��, ���� �ϳ� �̻��̸� TRUE)
--> EXISTS (��������)
SELECT * FROM DEPARTMENTS;
-- �� �μ���(GROUP BY) �ְ� �޿� ������ ���
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY IN (SELECT MAX(SALARY)
                    FROM EMPLOYEES
                   GROUP BY DEPARTMENT_ID);

-- �μ��� �ְ� �޿��� ���� �޿��� ������ ��� ������ ���
-- IN �������� ����� �����ϴ� ���� �� ��ġ�ؾ��Ѵ�.

-- ANY ������ Ȱ��
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY = ANY (SELECT MAX(SALARY)
                     FROM EMPLOYEES
                   GROUP BY DEPARTMENT_ID);
-- IN �����ڿ� ���� ��� ���� ���´�.
-- ���ǿ� �����ϴ� ����� �ϳ��� ���̸� ���� ��ȯ

SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
  FROM EMPLOYEES
 WHERE SALARY >= ALL (SELECT MAX(SALARY)
                     FROM EMPLOYEES
                   GROUP BY DEPARTMENT_ID);
-- ALL : �������� ����� �����ϴ� ��� ���鿡 ���� ������ �����ؾ��Ѵ�.
-- ���������� ���������� ��� ��� ���� �����ؾ��Ѵ�.
-- ���������� ��� �� �� ���� ū ���� 24000�� �񱳸� �ؼ� ũ�ų� ���� ����
-- ���� �����͸� ����� �϶�� ���
-- ��������δ� �ִ� ������ ū ���� ����� �Ǽ� �ִ밪�� ���ϴ°Ŷ� ����.

-- EXISTS �����ڴ� ���� ���θ� Ȯ��
SELECT DEPARTMENT_ID, FIRST_NAME
  FROM EMPLOYEES
 WHERE EXISTS (SELECT FIRST_NAME
                 FROM EMPLOYEES
                WHERE DEPARTMENT_ID = 1000);


-- ���μ��� �μ��̸��� �ְ�޿� ���(�����������X)
SELECT D.DEPARTMENT_NAME, MAX(E.SALARY)
  FROM EMPLOYEES E
  JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME;


-- �� �μ���(GROUP BY) �ְ� �޿� ������ ���
-- IN������
SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM EMPLOYEES
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID)
GROUP BY DEPARTMENT_ID;

-- ANY������
SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM EMPLOYEES
WHERE SALARY >= ANY (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID)
GROUP BY DEPARTMENT_ID;

-- ALL������
SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
FROM EMPLOYEES
WHERE SALARY >= ALL (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID)
GROUP BY DEPARTMENT_ID;

-- EXISTS������
SELECT E.DEPARTMENT_ID, MAX(E.SALARY) AS MAX_SALARY
FROM EMPLOYEES E
WHERE EXISTS (SELECT 1 FROM EMPLOYEES 
               WHERE DEPARTMENT_ID = E.DEPARTMENT_ID 
              GROUP BY DEPARTMENT_ID 
              HAVING MAX(SALARY) = E.SALARY)
GROUP BY E.DEPARTMENT_ID;







