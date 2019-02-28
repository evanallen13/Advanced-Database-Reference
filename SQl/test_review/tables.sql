set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\test_review\tables.sql */

drop table orders;
drop table products;
drop table customers;

create table customers (
	cnum number(3) primary key,
	cname varchar2(15),
	status varchar2(15),
	member varchar2(15));

create table products (
	pnum varchar2(2) primary key,
	pname varchar2(15),
	status varchar2(15));

create table orders (
	onum number(4) primary key,
	status varchar2(1),
	cnum number(3) references customers(cnum),
	pnum varchar2(2) references products(pnum),
	amount number(4));

insert into customers values (101,'Andy','Active','Regular');
insert into customers values (102,'Betty','Active','Regular');
insert into customers values (103,'Cindy','Inactive','Premium');
insert into customers values (104,'David','Active','Gold');
insert into customers values (105,'Ellen','Inactive','Premium');

insert into products values ('P1','Pencil','Actice');
insert into products values ('P2','Pen','Actice');
insert into products values ('P3','Paper','Discontinue');
insert into products values ('P4','Box','Actice');
insert into products values ('P5','Mouse','Active');

insert into orders values (1001,'C',101,'P1',1500);
insert into orders values (1002,'X',101,'P5',2000);
insert into orders values (1003,'O',103,'P1',500);
insert into orders values (1004,'O',105,'P1',700);
insert into orders values (1005,'O',101,'P3',1000);
insert into orders values (1006,'O',102,'P1',200);




select 
	case 
		when to_char(timestamp, 'MM') = '01' then 'January'
		when to_char(timestamp, 'MM') = '02' then 'Febuary'
		when to_char(timestamp, 'MM') = '03' then 'March'
		when to_char(timestamp, 'MM') = '04' then 'April'
	end as month,name, count(status)
	from myTable
	group by month,name;
