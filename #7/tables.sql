set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\#7\tables.sql */
drop table customers;

create table Customers(
	Cnum number(3) primary key,
	Cname varchar2(15),
	accountBalance number(8,2),
	totalMileage number(6));

insert into Customers values (101,'Andy',85.25,2152);
insert into Customers values (102,'Betty',170,808);
insert into Customers values (103,'Cindy',-55.13,31);
insert into Customers values (104,'David',1308.02,5510);
insert into Customers values (105,'Ellen',99.77,11154);
insert into Customers values (106,'Frank',-220.48,380);


