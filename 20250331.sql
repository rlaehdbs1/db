--�����ͱ���
desc emp;
select*from emp;
select ename,job from emp;
--���̺� ����
desc professor;
select*from professor;
select name, 'good~~!Monring' "good Monring" from professor;
select dname, 'it''s deptno : ', deptno "DNAME AND DEPTNO" FROM dept;
select dname, q'[, it's deptno : ]' ,deptno "DNAME AND DEPTNO" FROM dept;
select profno"������ ��ȣ", name �̸� ,pay as "�޿�"  from professor;