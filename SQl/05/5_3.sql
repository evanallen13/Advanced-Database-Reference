set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\05\5_3.sql */

select * 
	from students
	where nvl(Major,'NA') != 'IS';