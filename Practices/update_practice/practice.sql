set echo off
set feedback off
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\practices\update_practice\practice.sql */

/* Updates GPA assumming that all classes are 3 crd */
update students 
	set gpa = (select avg(gdpt)
				from enrollments
				where students.snum = enrollments.snum
				group by snum);

update students 
	set gpa = (select (sum(gdpt * crhr) /sum(crhr))
				from enrollments,schclasses,courses
				where enrollments.callnum = schclasses.callnum
				and courses.cnum = schclasses.cnum
				and students.snum = enrollments.snum
				group by snum);