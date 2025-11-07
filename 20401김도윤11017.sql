select * from dept3;

CREATE TABLE dept4
AS
select dcode,dname from dept2;
select*from dept4;

select*from dept2 where dcode=2;
select *from dept2;
CREATE TABLE dept6
AS

drop table dept5;
create table dept5
as
select * from dept2 where dcode=1002;

CREATE TABLE dept6
AS
select dcode, dname from dept2 where dcode IN(1000,1001,1002);
select*from dept6;

create table dept7
as
select*from dept2 where 1=2;

select*from dept2 where 1=2;
select*from dept6;
alter table dept6
    add(location varchar2(10));
    
alter table dept6
    add(loaction2 varchar2(10) default 'SEOUL');