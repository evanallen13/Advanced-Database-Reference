set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#19\19_1.sql */

/* Display employee numbers and their manager */
select e1.enum as emp,e1.ename as ename,e2.enum as mng,e2.ename as mname
	from employees e1 join employees e2
	on (e1.mnum = e2.enum);

select e1.enum as emp,e1.ename as ename,e2.enum as mng,e2.ename as mname
	from employees e1 join employees e2
	on (e1.mnum = e2.enum (+));