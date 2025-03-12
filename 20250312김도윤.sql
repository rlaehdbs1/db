create table address(
 address1 varchar(255),
 adderess2 varchar(255),
 adderess3 varchar(255),
 postal_code varchar(255),
 client_id varchar(255));
 
 insert into address values('안양시','동안구','학의로','12345','김도윤');
 
drop table address;

select * from address;