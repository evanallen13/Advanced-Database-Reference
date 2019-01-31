set echo off
set feedback off
set verify on
set heading on


/* start C:\Users\evana\Desktop\IS480\two\2_2.sql */

/* #1 display how many students are 'IS' majors */
select count(*)
	from students 
	where major = 'IS';

/* #2 display how many students are Seniors */
select count(*) as "Num of Seniors"
	from students 
	where standing = 4;

/* #3 display the avg GPA of all students */
select avg(GPA) as "Avg of Students"
	from students;

/* #4 display the Avg GPA of all males */
select avg(GPA) as "Avg of Males"
	from students 
	where gender = 'M';

/* #5 display how many courses students 101 has taken */
select count(*)
	from students 
	where Snum = 101;

/* #6 display how many credit hours 101 has taken */
select sum(crhr) as "Credit Hours 101 has taken"
	from enrollments, schclasses, courses
	where enrollments.callnum = schclasses.callnum
	and schclasses.dept = courses.dept
	and schclasses.cnum = courses.cnum
	and snum = 101;

/* #7 display how many total credit units 101 has accumulated not counting F's */
select sum(crhr) as "Credit Hours 101 has recieved"
	from enrollments, schclasses, courses
	where enrollments.callnum = schclasses.callnum
	and schclasses.dept = courses.dept
	and schclasses.cnum = courses.cnum
	and snum = 101
	and grade in ('A','B','C','D');

/* #8 diplay GPA */
select sum(gdpt * crhr) as "101's total Credits Taken"
	from enrollments, schclasses, courses 
	where enrollments.callnum = schclasses.callnum
	and schclasses.dept = courses.dept
	and schclasses.cnum = courses.cnum
	and snum = 101;

/* #9 display GPA taken in account CrHr */
select sum(gdpt * crhr) / sum(crhr) as "101's total GPA"
	from enrollments, schclasses, courses 
	where enrollments.callnum = schclasses.callnum
	and schclasses.dept = courses.dept
	and schclasses.cnum = courses.cnum
	and snum = 101;


