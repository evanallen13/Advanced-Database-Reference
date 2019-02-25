set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\05\tables.sql */
drop table students;

create table students(
	SNum number(3) primary key,
	Sname varchar2(15),
	standing number(1),
	major varchar2(3),
	gpa number(2,1),
	majorGpa number(2,1));

insert into students values (101,'Andy',4,'IS',2.8,3.2);
insert into students values (102,'Betty',2,Null,3.2,Null);
insert into students values (103,'Cindy',3,'IS',2.5,3.5);
insert into students values (104,'David',2,'FIN',3.3,3.0);
insert into students values (105,'Ellen',1,Null,2.8,Null);	
insert into students values (106,'Frank',3,'MKT',3.1,2.9);
