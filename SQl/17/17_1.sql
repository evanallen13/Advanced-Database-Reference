set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#17\17_1.sql */

select sname, gpa,
	decode(floor(gpa),4,'A',3,'B',2,'C',1,'D',0,'F')
	from stu;

select sname, gpa,
	case 
	when gpa = 4 then 'A'
	when gpa >= 3 and gpa < 4 then 'B'
	when gpa >= 2 and gpa < 3 then 'C'
	when gpa >= 1 and gpa < 2 then 'D'
	when gpa < 1 then 'F'
	end
	from stu;