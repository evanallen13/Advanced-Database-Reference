set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\four\4_1.sql */

/* #1 display how many students are in each Major */
select major, count(*)
	from students
	group by major;

/* #2 display how many students are seniors */
select standing, count(*)
	from students
	where standing = 4
	group by standing;

/* #3 display avg GPA male vs. female */
select gender, round(avg(gpa),2)
	from students
	group by gender;

/* #4 display avg GPA per major */
select major, round(avg(gpa),2)
	from students
	group by major;

/* #5 Display majors with more than 100 students */
select major, count(*)
	from students
	group by major
	having count(*) >= 100;

/* #6 Display majors where GPA avg is higher than 2.8 */
select major, avg(gpa)
	from students
	group by major
	having avg(gpa) > 2.8;

/* #7 Display majors where there are more than 35 students Probation */
select major, count(*)
	from students
	group by major
	where count(*) > 35;

/* #8 display zip code where there are more than 200 Freshman students */
select  zip, count(*)
	from students
	group by zip
	having count(*) > 200;