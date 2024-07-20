-- CHAPTER 04. GROUP BY / HAVING

-- �����Լ��� ����
-- ������ �Լ� : �Էµ� �ϳ��� ��� ����� �ϳ��� ������ �Լ�
--> ������, ������, ��¥��, ��ȯ��, NULL�����Լ�, �����Լ�
-- ������ �Լ� : ���� ���� �Է¹޾� �ϳ��� ��� ������ ����� �Ǵ� �Լ�
--> ������ �Լ��� "�����Լ�"��� �θ���.

-- ������ �Լ�(�����Լ�)�� Ư¡
-- 1. �����Լ��� NULL���� �����ϴ� Ư���� ������ �ִ�.
-- 2. �����Լ��� �׷�ȭ(GROUP BY)�� �Ǿ� �ִ� ���¿����� ����� �����ϴ�.

-- �����Լ��� ����
-- COUNT() : ������ �������� ���� ��ȯ
-- SUM()   : ������ �������� �� ��ȯ
-- MAX()   : ������ ������ �� �ִ밪 ��ȯ
-- MIN()   : ������ ������ �� �ּҰ� ��ȯ
-- AVG()   : ������ �������� ��� �� ��ȯ

-- �������̺��� ����ID�� ���� ������ ��ȸ
SELECT COUNT(EMPLOYEE_ID)
  FROM EMPLOYEES
GROUP BY();
  
-- EMPLOYEES���̺��� �ϳ��� �׷����� �����ɷ� �ν�

SELECT COUNT(EMPLOYEE_ID) -- 1���� ��
      , EMPLOYEE_ID -- 107���� ��
  FROM EMPLOYEES;
--> ����ϰ��� �ϴ� ���� ������ ���� �ʾƼ� ������ ����.
--> �ذ����� GROUP BY�� Ư�� �÷��� �׷�ȭ ����� �ȴ�.

-- �������̺��� �μ�ID�� ���� ������ ��ȸ
SELECT COUNT(DEPARTMENT_ID)
  FROM EMPLOYEES;

-- COUNT�Լ��� *(�ƽ�Ÿ����ũ)�� ����� �� �ִ�.
--> �ٸ������Լ��� ���Ұ�
--> * ����ϸ� NULL������ �����ؼ� ���

SELECT COUNT(*)
  FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;
-- ����1) �������̺��� �޿��� �� �հ踦 ��� (SUM�Լ����)
SELECT SUM(SALARY)
  FROM EMPLOYEES;

-- ����2) �������̺��� �������� �ִ� �޿��� �ּ� �޿��� ���
SELECT MAX(SALARY), MIN(SALARY)
  FROM EMPLOYEES;

-- ����3) �������̺��� �μ�ID�� 100�� ������ ��� �޿��� ��� (AVG�Լ�)
-- ��� ���� �Ҽ��� 1�� �ڸ������� ���
SELECT TRUNC(AVG(SALARY),1)
  FROM EMPLOYEES
 WHERE DEPARTMENT_ID = 100;

SELECT * FROM ����������;
SELECT * FROM ����ǥ;

-- GROUP BY : Ư�� �÷��� �������� �׷�ȭ(����)

-- 4. SELECT   ���ϴ� �÷���1, ...
-- 1. FROM     ��ȸ�� ���̺��
-- 2. WHERE    ���ϴ� ���� �����ϱ� ���� ���ǽ�
-- 3. GROUP BY Ư�� �÷��� �������� �׷�ȭ

SELECT * FROM ����������;
-- ���������� ���̺��� �Ҽӹ� �� �л��� �ο����� ��ȸ
SELECT �Ҽӹ�, COUNT(�Ҽӹ�) AS �ݺ��ο���
  FROM ����������
GROUP BY �Ҽӹ�;

-- SQL�� �ۼ� ���� 
-- SELECT > FROM > WHERE > GROUP BY > HAVING > ORDER BY

-- *** SQL ���� ���� *** FWGHSO(�������)
-- FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY

-- ����ǥ ���̺��� ���񺰷� �ְ� ������ ���� ������ ���
SELECT * FROM ����ǥ;
SELECT ����, MAX(����), MIN(����)
  FROM ����ǥ
GROUP BY ����;

-- GROUP BY���� ����Ҷ� ������ ��
-- 1. ���� ��µǴ� ���� �����ϱ� ������ GROUP BY������ �ʰ� ����Ǵ� ����
-- HAVING, SELECT, ORDER BY ������ ����� �� �ִ� ���� ������ �ȴ�.
-- 2. ��� �����Լ��� ó���ϴ� �÷��� ����� �����ϴ�.

-- ����ǥ ���̺��� �л����� ��� ������ ���
-- �� �Ҽ��� 1�ڸ������� ���
SELECT �л�ID, ROUND(AVG(����), 1)
  FROM ����ǥ
GROUP BY �л�ID;

-- ����ǥ���̺��� �л����� JAVA�� DATABASE�� ������ �ո� ���
SELECT �л�ID, SUM(����)
  FROM ����ǥ
 WHERE NOT ���� IN 'PYTHON'
GROUP BY �л�ID;


-- HAVING�� : GROUP BY���� ���� �� ���� ����� �����մϴ�.
--> ���谡 �Ϸ�� ����� ������ ���� ���͸� �ϴ� ����
--> ������ ���� ����� ����� �ȴٴ� �������� WHERE���� ���������,
-- HAVING���� �׷�ȭ(GROUP BY)�� ��󿡼� ����� �ȴٴ� ������ �ٸ���.

-- ����) ����ǥ ���̺��� �л��� ��� ������ ���ϰ�,
-- ��� ������ 75������ �л��鸸 ���
SELECT �л�ID, ROUND(AVG(����),1)
  FROM ����ǥ
GROUP BY �л�ID
HAVING AVG(����) <= 75;

-- ���������� ���̺��� �Ҽӹ� �� �ο����� 3�� �̻��� �ݸ� ���
SELECT * FROM ����������;

SELECT �Ҽӹ�, COUNT(�Ҽӹ�)
  FROM ����������
GROUP BY �Ҽӹ�
HAVING COUNT(�Ҽӹ�) >= 3;

-- �������̺��� �μ��� �ְ� ������ 100000 �̻��� �μ��� ���
SELECT * FROM EMPLOYEES;

SELECT DEPARTMENT_ID, MAX(SALARY*12) AS �ְ���
  FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY*12) >= 100000;







