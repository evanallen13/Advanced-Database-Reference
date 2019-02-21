set echo on
set feedback off
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#14\tables.sql */

create table studentEmail (
	snum number(3) primary key,
	sname varchar2(25),
	lastName varchar2(15),
	firstName varchar2(15),
	emails varchar2(25),
	username varchar2(20),
	emailHost varchar2(15));

insert into studentEmail(snum,sname,emails) values (101,'Smith, John','jsmith@csulb.edu');
insert into studentEmail(snum,sname,emails) values (102,'Lui, Ali','aliu@chapman.edu');
insert into studentEmail(snum,sname,emails) values (103,'Jones, Bob','bob1@msn.com');
insert into studentEmail(snum,sname,emails) values (104,'Walker, Sky','skywalker@yahoo.com');
