set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\24\24_1.sql */

/* #1 Display for class 10110 its grade distrubutuion */
select grade,count(*) as "Number"
	from enrollments
	where callnum = 10110
	group by callnum,grade
	order by grade;

/* #1a Display number by Callnum including all Grade Letter */
select e1.grade, nvl(count(e2.snum),0)
	from enrollments e1, enrollments e2
	where e1.snum = e2.snum
	and e1.callnum = e2.callnum
	and e1.callnum = 10110
	group by e1.grade;
	
/* #2 For class 10110 display student count by standing */
select standing, count(*)
	from enrollments,students
	where enrollments.callnum = 10110
	and enrollments.snum = students.snum
	group by standing
	order by standing;

/* #3 Display each callnum and count for Each*/
select callnum, count(*) as Count
	from enrollments
	group by callnum;

/* #3a Display callnum and count for each. 0 for callnum that are Null */

/* #4 Display number of enrollment by year/semester */
select year,semester, count(*) as "Count"
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	group by year,semester;

/* #5 Display as Semester Year| Dept Cnum| Number of Enrollment */
select cast(rpad(decode(semester,'Sp','Spring','Fa','Fall'),6,' ')||' '||year as varchar(15)) as "Semester",
	rpad(dept,3,' ')||' '||cnum as "Course",
	count(*) as "Enrollment"
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	group by semester, year, dept, cnum;
