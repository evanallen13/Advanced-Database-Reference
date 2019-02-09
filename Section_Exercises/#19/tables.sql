set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#19\tables.sql */

drop table employees;

create table employees (
	enum number(3) primary key,
	ename varchar2(15),
	mnum number(3));

insert into employees values  (101,'Andy',106);
insert into employees values  (102,'Betty',106);
insert into employees values  (103,'Cindy',106);
insert into employees values  (104,'David',105);
insert into employees values  (105,'Ellen',101);
insert into employees values  (106,'Frank',Null);
