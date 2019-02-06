set echo off
set feedback on
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\hw1\hw1.sql */

/* Display Sname of students who received an A in IS 300 and whose is not an IS major */
select sname 
	from Students,enrollments,schclasses 
	where Students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum
	and dept = 'IS' 
	and cnum = '300'
	and grade = 'A'
	and major != 'IS';

/* Display zip codes where there are more than 200 freshman students */
select zip, count(*)
	from stu 
	where standing = 1 
	group by zip
	having count(*) > 200;

/* What is the average spending pf prime vs. non-prime members per person */
select prime, sum(amount)/count(amount) as Average 
	from amazon, customers
	where customers.custNum = amazon.custNum
	group by prime;

/* Display students who have taken IS 380 but never took IS 300 */
select snum
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and dept = 'IS'
	and cnum = 380
intersect
(select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
minus 
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and dept = 'IS'
	and cnum = 300);

/* Find Students who did not take any course in Spring 2013 */
select snum
	from students
minus 
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and semester = 'Sp'
	and year = 2013;


select sname,grade,dept,cnum,major
	from Students,enrollments,schclasses 
	where Students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum;