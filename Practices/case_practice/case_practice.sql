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

/* An update Case Statement */
update enrollments 
	set gdpt = (
	case 
		when grade = 'A' then 4
		when grade = 'B' then 3
		when grade = 'C' then 2
		when grade = 'D' then 1
		when grade = 'F' then 0
	end)