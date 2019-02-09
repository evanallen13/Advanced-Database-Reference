set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#10\10_2.sql */

/* #1 Find students who have not taken MGT 425 */
select snum 
	from students
minus 
select snum 
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and dept = 'IS'
	and cnum = 300;


