set echo off
set feedback off
set verify off
set heading off

/* start C:\Users\evana\Desktop\IS480\section_exercises\#22\update_table.sql */

update enrollments
	set gdpt = decode(grade,'A',4,'B',3,'C',2,'D',1,'F',0);


