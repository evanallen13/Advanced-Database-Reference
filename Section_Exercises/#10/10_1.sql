set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\#10\10_1.sql */

/* #1 Find students who have not taken MGT 425 */
select snum 
	from students
minus 
select snum 
	from enrollments;

/* #2 Find IS students who have not taken IS 380 */
select snum
	from students
	where major = 'IS'
minus 
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and dept = 'IS'
	and cnum = '380';

/* #3 Display students who have taken both IS 380 and IS 385 */
select sname, snum
	from students
	where snum in (select snum 
					from enrollments,schclasses
					where enrollments.callnum = schclasses.callnum
					and cnum = '380'
					and dept = 'IS'
					intersect 
					select snum 
					from enrollments,schclasses
					where enrollments.callnum = schclasses.callnum
					and cnum = '385'
					and dept = 'IS');

/* #4 Display students who have taken IS 380 but never took IS300 */
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and cnum = '380'
	and dept = 'IS'
intersect
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and snum not in(select snum from enrollments,schclasses where enrollments.callnum = schclasses.callnum and cnum = '300'and dept = 'IS');

/* #5 Find students who didnt take an courses in Spring 2013 */
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
minus 
select snum
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and semester = 'Sp'
	and year = 2013;