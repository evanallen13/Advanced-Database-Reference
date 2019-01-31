set echo off
set feedback on
set verify on
set heading off

/* start C:\Users\evana\Desktop\IS480\three\tables.sql */

drop table orders;
drop table customers;

create table customers(
	custNum number(3) primary key,
	custName varchar2(10),
	gender varchar2(2),
	prime varchar2(2));

create table orders(
	ordNum number(4) primary key,
	ordDate date,
	custNum number(3),
	amount number(6,2),
	constraint fk_orders_custNum foreign key (custNum) references customers(custNum));

insert into customers values (101,'Andy','M','Y');
insert into customers values (102,'Betty','F','Y');
insert into customers values (103,'Cindy','F','N');
insert into customers values (104,'David','M','N');
insert into customers values (105,'Ellen','F','Y');
insert into customers values (106,'Frank','M','Y');
insert into customers values (107,'George','M','Y');

insert into orders values (1001,to_date('8/1/2015','mm/dd/yyyy'),101,400);
insert into orders values (1002,to_date('8/15/2015','mm/dd/yyyy'),102,1500);
insert into orders values (1003,to_date('12/3/2015','mm/dd/yyyy'),103,800);
insert into orders values (1004,to_date('2/6/2016','mm/dd/yyyy'),101,300);
insert into orders values (1005,to_date('3/7/2016','mm/dd/yyyy'),103,200);
insert into orders values (1006,to_date('8/24/2016','mm/dd/yyyy'),104,1100);
insert into orders values (1007,to_date('1/5/2017','mm/dd/yyyy'),101,1400);
insert into orders values (1008,to_date('5/3/2017','mm/dd/yyyy'),101,50);
insert into orders values (1009,to_date('8/8/2017','mm/dd/yyyy'),103,89);

