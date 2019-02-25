set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\06\tables.sql */

drop table IS380;

create table IS380 (
	Snum number(3) primary key,
	sname varchar(15),
	Hw1 number(3),
	Hw2 number(3),
	Hw3 number(3),
	Hw4 number(3));

insert into IS380 values (101,'Andy',10,8,3,10);
insert into IS380 values (102,'Betty',10,7,7,10);
insert into IS380 values (103,'Cindy',9,9,7,10);
insert into IS380 values (104,'David',10,9,8,0);
insert into IS380 values (105,'Ellen',10,4,5,10);
insert into IS380 values (106,'Frank',10,5,8,10);


