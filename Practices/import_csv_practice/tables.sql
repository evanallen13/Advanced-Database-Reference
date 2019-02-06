set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\import_csv_practice\tables.sql */

drop table stu;

create table stu(
	snum number(3) primary key,
	sname varchar2(15),
	standing number(1),
	major varchar2(3),
	gpa number(2,1),
	gender varchar2(1),
	zip number(5),
	status varchar2(15))

LOAD DATA
INFILE ‘C:\Users\evana\Desktop\IS480\import_csv_practice\input.csv’
BADFILE ‘C:\Temp\emp.bad’
DISCARDFILE ‘C:\Temp\emp.dsc’
INSERT INTO TABLE  stu
FIELDS TERMINATED BY “,” OPTIONALLY ENCLOSED BY ‘”‘ TRAILING NULLCOLS
(empno,empname,salary,deptno);
