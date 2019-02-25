set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\12\test_practice.sql */

select lastName, substr(ltrim(lastName),-1)
	from stu;

update stu
	set username = 'z'||substr(lastName,1,2)||substr(ssn,-4);

