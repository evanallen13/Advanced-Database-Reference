set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\five\5_1.sql */

/* Display students who are not IS majors */
select * 
	from students 
	where major not in ('IS')
	or major is null;

/* Display students whose majorGpa is lower than 3 */
select * 
	from students
	where majorGpa < 3 
	or majorGpa is Null;

/* Display Snum, Sname, Major. If major = Null display undeclared */
select Snum,sname,nvl(major,'undeclared') as "Major"
	from students;

/* Display snum, sname and major gpa. replace gpa with 0 if Null */
select Snum, sname, nvl(majorGpa,0) as "Major Gpa"
	from students;