set echo off
set feedback off
set verify on
set heading on


/* start C:\Users\evana\Desktop\IS480\one\1_3.sql */


/* #1 Display SName and Major of Students who are enrolled in IS 300 during Spring 2013 */
select sname, major 
	from enrollments,students,schclasses
	where students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum
	and dept = 'IS'
	and cnum = 300
	and semester = 'Sp'
	and year = 2013;

/* #2 Display SName and Major of Students who are enrolled in IS 300 course during Spring 2013, who are not IS majors */
select sname, major 
	from enrollments,students,schclasses
	where students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum
	and dept = 'IS'
	and cnum = 300
	and semester = 'Sp'
	and year = 2013
	and major != 'IS';

/* #3 Display Dept, CNum, Title of courses student 101 took during spring 2013 */
select schclasses.Dept, schclasses.CNum, Ctitle 
	from enrollments, schclasses, courses 
	where enrollments.callnum = schclasses.callnum
	and schclasses.dept = courses.dept
	and schclasses.cnum = courses.cnum
	and Snum = 101
	and semester = 'Sp'
	and year = 2013;
