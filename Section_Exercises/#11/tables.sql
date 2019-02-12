set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#11\tables.sql */

drop table students;

create table students(
	snum number(3) primary key,
	sname varchar2(15),
	standing number(1),
	major varchar2(3),
	gpa number(2,1),
	gender varchar2(1),
	zip number(5),
	status varchar2(15));

insert into students values (101,'Andy',3,'IS',2.8,'M',91101,'Active');
insert into students values (102,'Betty',4,'ACC',3.2,'F',91102,'Active');
insert into students values (103,'Cindy',2,'IS',1.5,'F',91101,'Probation');
insert into students values (104,'David',2,'FIN',3.3,'M',91104,'Active');
insert into students values (105,'Ellen',1,'IS',1.8,'M',91102,'Probation');
insert into students values (106,'Frank',3,'MKT',3.1,'F',91103,'Active');


