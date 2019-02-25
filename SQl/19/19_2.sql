set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\19\19_2.sql */

select e1.enum, e1.ename, e1.mnum, e2.ename
	from employees e1, employees e2
	where e1.mnum = e2.enum
	order by e1.enum;