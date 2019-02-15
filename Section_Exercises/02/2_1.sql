set echo off
set feedback off
set verify off
set heading off


/* start C:\Users\evana\Desktop\IS480\two\2_1.sql */


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

/* #4 Andy has taken IS 300 several times. Display the year, semester, and grade where he took IS 300 */
select year, semester, grade 
	from students,schclasses,enrollments
	where schclasses.callnum = enrollments.callnum
	and students.snum = enrollments.snum 
	and sname = 'Andy'
	and schclasses.dept = 'IS'
	and cnum = 300;

/* #5 Display sname of students who have received an "A" in IS 300 and who is an IS major */
select sname, enrollments.callnum
	from students,schclasses,enrollments
	where schclasses.callnum = enrollments.callnum
	and students.snum = enrollments.snum
	and schclasses.dept = 'IS'
	and cnum = 300
	and grade = 'A';

/* #6 Perequisists to 380 */
select PREREQ.pdept,PREREQ.pcnum,ctitle 
	from PREREQ,courses
	where PREREQ.pdept = courses.dept
	and PREREQ.pcnum = courses.cnum
	and PREREQ.dept = 'IS'
	and PREREQ.cnum = 380;