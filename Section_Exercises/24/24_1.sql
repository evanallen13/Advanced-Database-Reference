set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#24\24_1.sql */

/* Display for class 10110 its grade distrubutuion */
select grade,count(*) as "Number"
	from enrollments
	where callnum = 10110
	group by callnum,grade
	order by grade;
