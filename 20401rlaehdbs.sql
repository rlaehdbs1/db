select*from emp;
select ename, initcap(ename) "INITCAP" from emp where deptno=10;
select ename, lower(ename)"LOWER",upper(ename) "UPPER"from emp where deptno=10;
--길이출력
select ename,length(ename), lengthb(ename), deptno from emp where deptno=20;
--글자 추출
select '홍길동',length('홍길동'), lengthb('사과')from dual;
select substr('abcde',3,2) "3,2",substr('abcde',-3,2),substr('abcde',-3,4)from dual;
select*from student;
select name, substr(jumin,3,4)-1 "BIRTHDAT-1" from student where deptno1=101;