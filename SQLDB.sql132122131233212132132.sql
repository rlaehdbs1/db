create table t_readonly(
no number,
name varchar2(10));

select * from t_readonly;

alter table t_readonly read only;

INSERT into t_readonly values(2,'BBB');

alter table t_readonly read write;

create table bt1(
col1 NUMBER,
col2 number,
col3 number generated always as (col1+col2));
select*from vt1,
insert into vt1 values(1,2);

update vt1 set col1=5,
select * from vt1;

alter table vt1 add(
col4 generated always as((col1*12)+col2));

select column_name, data_type, data_default
from user_tab_columns
where table_name='VT1';

