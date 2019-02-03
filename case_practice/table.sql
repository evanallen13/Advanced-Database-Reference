set echo on
set feedback on
set verify on
set heading on
set serveroutput on

/* start C:\Users\evana\Desktop\IS480\case_practice\table.sql */
drop table stu;

create table stu(
	snum number(3) primary key,
	gpa number(2,1));

insert into stu values (101,2.4);
insert into stu values (102,4.0);
insert into stu values (103,3.4);
insert into stu values (104,2.8);
insert into stu values (105,3.2);
insert into stu values (106,2.5);
insert into stu values (107,1.8);
insert into stu values (108,3.4);
insert into stu values (109,2.4);
insert into stu values (110,3.2);
