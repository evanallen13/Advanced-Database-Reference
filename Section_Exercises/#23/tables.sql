set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#23\tables.sql */

drop table items;
drop table itemDetails;

create table items(
	i number(3) primary key,
	iname varchar2(25),
	unitprice number(4,2));

create table itemDetails(
	i number(3),
	include number(3),
	constraint items_pk primary key (i,include));

insert into items values (101,'Cheese Burger',3.99);
insert into items values (102,'Double Cheese Burger',4.99);
insert into items values (103,'French Fries',1.19);
insert into items values (104,'Medium Coke',1.39);
insert into items values (105,'Large Coke',1.89);
insert into items values (106,'Combo Meal 1',6.99);
insert into items values (107,'Combo Meal 2',8.99);

insert into itemDetails values (106,101);
insert into itemDetails values (106,103);
insert into itemDetails values (106,104);
insert into itemDetails values (107,102);
insert into itemDetails values (107,103);
insert into itemDetails values (107,105);

