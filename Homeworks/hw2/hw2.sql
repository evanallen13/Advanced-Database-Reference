set echo off
set feedback on
set verify off
set heading off

/* start C:\Users\evana\Desktop\IS480\homeworks\hw2\hw2.sql */

/* Display students who are not IS majors */
select count(*)
	from students
	where nvl(major,'N/A') != 'IS';

/* Display transNum| acctNum| amount */


	
