set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\five\5_2.sql */

/* Display Snum, Sname and higher of his GPA and Major GPA */
select snum, sname, greatest(gpa,nvl(majorGpa,0))
	from students;

/* Display Snum, Sname anf lower of his GPA and Major GPA */
select snum, sname, least(gpa,nvl(majorGpa,0))
	from students;