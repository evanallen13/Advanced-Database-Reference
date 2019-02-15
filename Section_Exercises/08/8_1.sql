set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\#8\8_1.sql */

/* Display students grade based on standing */
select Sname,decode(standing,4,'Senior',3,'Junior',2,'Sophmore',1,'Freshman') as Grade
	from students;