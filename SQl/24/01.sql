set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\24\01.sql */

select temp2.grade as Grades, count(temp.grade) as Count
	from (select grade
		from enrollments
		where callNum = 10110) temp,
		(select distinct(grade)
		from enrollments) temp2
	where temp2.grade = temp.grade(+)
	group by temp2.grade
	order by temp2.grade;


select grade, count(*)
	from enrollments
	where callNum = 10110
	group by grade;

select grade, count(*)
	from enrollments
	group by grade;