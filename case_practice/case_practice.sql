set echo off
set feedback on
set verify on
set heading on
set serveroutput on

/* start C:\Users\evana\Desktop\IS480\case_practice\case_practice.sql */

select snum,gpa,
case
	when gpa >= 4 then 'A'
	when gpa >= 3 and gpa < 4 then 'B'
	when gpa >= 2 and gpa < 3 then 'C'
	when gpa >= 1 and gpa < 2 then 'D'
end as "Grade"
from stu;