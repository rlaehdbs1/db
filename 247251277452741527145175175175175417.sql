³¯¾Æ°¨
select empno, ename, hiredate from emp where ename LIKE'_A%';
select ename, hiredate, sal from emp where hiredate>'81-01-01'and sal >=1300;
select ename, hiredate, sal from emp where hiredate>'82-01-01' or sal >=1300;
select studno,name, deptno1, 1 from  student where deptno1=101
Union
select profno, name,deptno,2 from professor where deptno=101;