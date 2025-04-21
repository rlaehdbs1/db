--2025�� 4�� 14�� 1�� Select ��������
1. �μ����̺�(DEPT)�� ��� �����͸� ����϶�.
select*from dept;

2. EMP���̺��� �� ����� ����, �����ȣ, �̸�, �Ի����� ����϶�.
SELECT job, empno, ename, hiredate
FROM EMP;

3. EMP���̺��� ������ ����ϵ�, �� �׸�(ROW)�� �ߺ����� �ʰ� ����϶�.
SELECT DISTINCT job
FROM EMP;

4. EMP���̺��� �޿��� 2850 �̻��� ����� �̸� �� �޿��� ����϶�.
SELECT ename, sal
FROM EMP
WHERE sal >= 2850;


5. EMP���̺��� �����ȣ�� 7566�� ����� �̸� �� �μ���ȣ�� ����϶�.
SELECT ename, deptno
FROM EMP
WHERE empno = 7566;

6. EMP���̺��� �޿��� 1500�̻� 2850������ ������ ������ �ʴ� ��� ����� �̸� �� �޿��� ����϶�.
SELECT ename, sal
FROM EMP
WHERE sal NOT BETWEEN 1500 AND 2850;

7. EMP���̺��� 1981�� 2�� 20��~ 1981�� 5�� 1�Ͽ� �Ի��� ����� �̸�, ���� �� �Ի����� ����ϵ�, �Ի����� �������� �ؼ� ������������ �����϶�.
SELECT ename, job, hiredate
FROM EMP
WHERE hiredate BETWEEN TO_DATE('1981-02-20', 'YYYY-MM-DD') 
                  AND TO_DATE('1981-05-01', 'YYYY-MM-DD')
ORDER BY hiredate ASC;


8. EMP���̺��� 10�� �� 30�� �μ��� ���ϴ� ��� ����� �̸��� �μ� ��ȣ�� ����ϵ�, �̸��� ���ĺ������� �����϶�.
SELECT ename, deptno
FROM EMP
WHERE deptno IN (10, 30)
ORDER BY ename ASC;


9. EMP���̺��� 10�� �� 30�� �μ��� ���ϴ� ��� ��� �� �޿��� 1500�� �Ѵ� ����� �̸� �� �޿��� ����϶�.(�� �÷����� ���� employee �� Monthly Salary�� �����Ͻÿ�)
SELECT ename AS employee, sal AS "Monthly Salary"
FROM EMP
WHERE deptno IN (10, 30)
  AND sal > 1500;


10. EMP���̺��� �����ڰ� ���� ��� ����� �̸� �� ������ ����϶�.
SELECT ename, job
FROM EMP
WHERE mgr IS NULL;

11. EMP���̺��� Ŀ�̼��� �޴� ��� ����� �̸�, �޿� �� Ŀ�̼��� ����ϵ�, �޿��� �������� ������������ �����϶�.
SELECT ename, sal, comm
FROM EMP
WHERE comm IS NOT NULL
ORDER BY sal DESC;

12. EMP���̺��� �̸��� �� ��° ���ڰ� A�� ��� ����� �̸��� ����϶�.
SELECT ename
FROM EMP
WHERE SUBSTR(ename, 3, 1) = 'A';

13. EMP���̺��� �̸��� L�� �� �� ���� �μ� 30�� �����ִ� ����� �̸��� ����϶�.
SELECT ename
FROM EMP
WHERE ename LIKE '%L%L%' 
  AND deptno = 30;

14. EMP���̺��� ������ Clerk �Ǵ� Analyst�̸鼭 �޿��� 1000, 3000, 5000 �� �ƴ� ��� ����� �̸�, ���� �� �޿��� ����϶�.
SELECT ename, job, sal
FROM EMP
WHERE job IN ('Clerk', 'Analyst')
  AND sal NOT IN (1000, 3000, 5000);

15. EMP���̺��� �����ȣ, �̸�, �޿� �׸��� 15% �λ�� �޿��� ������ ǥ���ϵ� �÷����� New Salary�� �����Ͽ� ����϶�.
SELECT empno, ename, sal, ROUND(sal * 1.15) AS "New Salary"
FROM EMP;

16. 15�� ������ ������ �����Ϳ��� �޿� �λ��(�� �޿����� ���� �޿��� �� ��)�� �߰��ؼ� ����϶�. �÷����� Increase�� �϶�.
SELECT empno, ename, sal, 
       ROUND(sal * 1.15) AS

17. EMP���̺��� ��� ����� �̸�(ù ���ڴ� �빮�ڷ�, ������ ���ڴ� �ҹ��ڷ� ǥ��) �� �̸� ���̸� ǥ���ϴ� ������ �ۼ��ϰ� �÷� ��Ī�� ���� ��NAME���� ��LENENAME������ �Ͻÿ�.
SELECT INITCAP(ename) AS "NAME", LENGTH(ename) AS "LENENAME"
FROM EMP;

18. EMP���̺��� ����� �̸��� Ŀ�̼��� ����ϵ�, Ŀ�̼��� å������ ���� ����� Ŀ�̼��� ��no commission������ ����϶�.
SELECT ename, NVL(comm, 'no commission') AS comm
FROM EMP;