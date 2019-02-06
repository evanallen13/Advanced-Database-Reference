set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#12\12_1.sql */


/* Display the last character of everyones name */
select substr(lastname,-1)
	from stu;

/* usernames are the first 2 letter of lastname followed by last 4 of ssn */

update stu
	set username = substr(lastname,1,2)||substr(ssn,-4);

select * from stu;