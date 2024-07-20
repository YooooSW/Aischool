-- CHAPTER 05. JOIN

-- JOIN : ���� ���̺��� �ʿ��� �����͸� �ѹ��� �������� ���

-- �� ����(Non EQUI JOIN)
--> �� ���� ���̺� ���� ���� ��Ȯ�ϰ� ��ġ���� �ʴ� ��� Ȱ���ϴ� ����
--> �������(=)�� �ƴ� �����ڵ��� ����� ������ �ǹ�(>, >=, <, <=, BETWEEN)

-- � ����(EQUI JOIN)
--> �� ���� ���̺� ���� ���� ��Ȯ�ϰ� ��ġ�ϴ� ��� Ȱ��Ǵ� ����
--> ������ڸ� ����ؼ� ������ �ǹ� (=)
--> ���� ���� ���Ǵ� ����

-- ������� ��� ���
-- SELECT ���̺�1.�÷���1, ���̺�2.�÷���
-- FROM   ���̺�1, ���̺�2 --> ���̺�1�� ���̺�2�� JOIN
-- WHERE  ���̺�1.�÷��� = ���̺�2.�÷���; --> ���� ������ ���

-- ���������� ���̺�� ����ǥ ���̺��� �л�ID, �л��̸�, ����, ���� ������ ���

--1. ������ ��� ���̺��� ������ Ȯ��
--2. FROM���� ������ ���̺��� ,(�ĸ�) �������� �ۼ�
--3. ���� ������ �Ǵ� Ư�� �÷��� Ȯ���Ͽ�, WHERE �������� ���� ������ �ۼ�
--4. SELECT ���� ����ϰ��� �ϴ� �÷��� �ۼ�

SELECT * FROM ����������;
SELECT * FROM ����ǥ;

SELECT A.�л�ID, A.�л��̸�, B.����, B.����
  FROM ���������� A, ����ǥ B
 WHERE A.�л�ID = B.�л�ID;

-- ������ ����ID, FIRST_NAME, DEPARTMENT_NAME(�μ��̸�) ������ ���

--1. ������ ��� ���̺��� ������ Ȯ��
--2. FROM���� ������ ���̺��� ,(�ĸ�) �������� �ۼ�
--3. ���� ������ �Ǵ� Ư�� �÷��� Ȯ���Ͽ�, WHERE �������� ���� ������ �ۼ�
--> ���������� �Ǵ� Ư�� �÷� : ������ ���̺� ���� ���� ��� ���� ������ �÷��Դϴ�.
--> ���������� �Ǵ� �÷��� ��κ� PK�� FK����� �̷������, �ٸ� �� �׷����� �ƴϴ�!!
--4. SELECT ���� ����ϰ��� �ϴ� �÷��� �ۼ�
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT E.EMPLOYEE_ID
      , E.FIRST_NAME
      , D.DEPARTMENT_NAME
      , D.LOCATION_ID
      , E.JOB_ID
  FROM EMPLOYEES E, DEPARTMENTS D
 WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
-- ����ID�� 100�� ������ FIRST_NAME, �μ��̸��� ���
SELECT E.EMPLOYEE_ID
      , E.FIRST_NAME
      , D.DEPARTMENT_NAME
  FROM EMPLOYEES E, DEPARTMENTS D
 WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
   AND E.EMPLOYEE_ID = 100;

-- ANSI ���ι��� : �̱� ǥ����ȸ���� ���� ��� DBMS���� ��밡���� ���� �����̴�.

-- SELECT ���̺�1.�÷���, ���̺�2.�÷���
-- FROM   ���̺�1 JOIN ���̺�2
--   ON   (���̺�1.�÷��� = ���̺�2.�÷���);
-- WHERE  �Ϲ����ǽ��� ���� ����

-- INNER JOIN : �������� �̶�� �ϸ�, ���� ���ǿ��� ������ ���� �ִ� �ุ ��ȯ
--> EQUI(�����) �� ������ �����̴�.

-- INNER JOIN�� �����
--3. SELECT ���ϴ� �÷���
--1. FROM   ���̺�1 INNER JOIN ���̺�2 -> ���̺� INNER JOIN�ϰڴ�.
--   ON     (���̺�1.�÷� = ���̺�2.�÷�) -> ���� ������ ���
--2. WHERE  �Ϲ� ������ ��� -> ���� ���� �� ������ ���

-- �������̺��� ����ID, �μ�ID
-- �μ����̺��� �μ��̸��� ��� (INNER JOIN)
SELECT E.EMPLOYEE_ID
      , E.DEPARTMENT_ID
      , D.DEPARTMENT_NAME
  FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
  ON   (E.DEPARTMENT_ID = D.DEPARTMENT_ID);

-- ������ ���̺��� �ܵ� �÷��̸� SELECT���� .(���)�� �������൵ ����� ����.
-- ������ ���������� ���(.)�� �����ִ� ���� ����

-- ���� ������ �Ǵ� �÷��� PK�� FK����� ���� �̷������
-- ������ �� �׷����� �ƴϴ�

-- ����ID, JOB_ID, JOB_TITLE�� ������ ������� ���
SELECT * FROM EMPLOYEES;
SELECT * FROM JOBS;

SELECT E.EMPLOYEE_ID, E.JOB_ID, J.JOB_TITLE
  FROM EMPLOYEES E JOIN JOBS J
  ON   (E.JOB_ID = J.JOB_ID);
-- INNER JOIN�� INNER��� Ű���带 ���� ����

-- CROSS JOIN : ���� �������� ���� �ʰ� ���̺��� ��� �����͸� ������ ���� ���
--> ���� ������ ���� ��� ���� �� �ִ� ��� �������� ������ ��ȸ
--> īƼ�� �� �̶�� �θ���.
--> īƼ�� �� : ��� ����� ���� ������ ��

-- �������̺��� ����ID, �μ�ID
-- �μ����̺��� �μ��̸��� ���(CROSS JOIN)
SELECT E.EMPLOYEE_ID, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
  FROM EMPLOYEES E CROSS JOIN DEPARTMENTS D;
-- ON�� ������ CROSS JOIN�̰� CROSS�� ��������
-- �������̺��� ��(107) X �μ����̺��� ��(27) = > 2889�� ���� ���
--> īƼ�� ���� �߻� (��� ����� ���� ��� �Ǵ°�)


-- OUTER JOIN : �ܺ������̶�� �ϸ�, �ΰ��� ���̺� ���� �������� ��ȸ�ϰ�
-- ���� ���̺��� �ִ� �����͵� ���Խ��Ѽ� ��ȸ�ϰ� ������ ����ϴ� ���� ����
--> ���� �������� NULL���� ����ϰ��� �Ҷ� ����ϴ� ��

-- LEFT OUTER JOIN : ���� ���̺��� �������� NULL���� �����Ͽ� ���
-- ����Ŭ ���� ���ν� : ���� �������� �ݴ��� ������ �÷��� (+) ��ȣ�� �ۼ�

-- RIGHT OUTER JOIN : ������ ���̺��� �������� NULL���� �����Ͽ� ���
-- ����Ŭ ���� ���ν� : ���� �������� �ݴ��� ���� �÷��� (+) ��ȣ�� �ۼ�

-- FULL OUTER JOIN : ������ NULL���� �����Ͽ� ���
-- ����Ŭ �������� ���� ����, UNION �����ڸ� �̿��ؼ� ���� ���� ����ϴ� ���

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
-- �� �μ��� �Ŵ��� �������� �μ��̸�, �Ŵ������̵�, �̸��� ��� (INNER JOIN)
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D JOIN EMPLOYEES E
  ON   D.MANAGER_ID = E.EMPLOYEE_ID;
  
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D, EMPLOYEES E
 WHERE D.MANAGER_ID = E.EMPLOYEE_ID;

-- LEFT OUTER JOIN
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D LEFT JOIN EMPLOYEES E
  ON   D.MANAGER_ID = E.EMPLOYEE_ID;

-- ����Ŭ �������� Ǯ��
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D, EMPLOYEES E
 WHERE D.MANAGER_ID = E.EMPLOYEE_ID(+);
 
-- RIGHT OUTER JOIN
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D RIGHT JOIN EMPLOYEES E
  ON   D.MANAGER_ID = E.EMPLOYEE_ID;

-- ����Ŭ �������� Ǯ��
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D, EMPLOYEES E
 WHERE D.MANAGER_ID(+) = E.EMPLOYEE_ID;

-- FULL OUTER JOIN
SELECT D.DEPARTMENT_NAME, D.MANAGER_ID, E.FIRST_NAME
  FROM DEPARTMENTS D FULL JOIN EMPLOYEES E
  ON   D.MANAGER_ID = E.EMPLOYEE_ID;

-- 3�� �̻��� ���̺� ���� �����
-- SELECT ���̺�1.�÷���, ���̺�2.�÷���, ...
--   FROM ���̺�1, ���̺�2, ���̺�3
--  WHERE ���̺�1.�÷��� = ���̺�2.�÷���
--    AND ���̺�2.�÷��� = ���̺�3.�÷���;






