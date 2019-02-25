set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\06\6_2.sql */

select snum, (Hw1+HW2+Hw3+Hw4)-(least(Hw1,HW2,Hw3,Hw3))
	from IS380;