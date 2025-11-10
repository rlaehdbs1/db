select * from dept;
drop table dept7
AS
select * from dept2;

desc dept7;
 add(location varchar2(10);

alter table dept7 rename column location to loe;
select*from dept7;
rename table dept7 to dept7;

select*from dept2;
--테이블 구조보기
desc dept6;

-- 컬럼 수정 (loc 컬럼의 자료형 변경)
ALTER TABLE dept7 MODIFY (loc VARCHAR2(20));

-- 테이블 구조 확인
DESC dept7;

-- 컬럼 삭제
ALTER TABLE dept7 DROP COLUMN loc;
ALTER TABLE dept7 DROP COLUMN location CASCADE CONSTRAINTS;

CREATE TABLE dept6
AS
SELECT * FROM dept7;

select*from dept6;
--truncate table:모든 데이터를 빠르게 삭제함. 구조는 남아있음
truncate table dept6;
--drop table: 데이터와 구조를 모두 삭제
drop table dept7