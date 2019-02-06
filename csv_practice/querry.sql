set colsep ,   /* separate columns with a comma */
set pagesize 0   /* No header rows */
set trimspool on /* remove trailing blanks */
set headsep off  /* this may or may not be useful...depends on your headings. */
set linesize 1000  /* X should be the sum of the column widths */
set numw 12      /* X should be the length you want for numbers (avoid scientific notation on IDs) */
set echo off
set heading off
set verify off
set feedback off

/* start C:\Users\evana\Desktop\IS480\csv_practice\tables.sql */

spool C:\Users\evana\Desktop\IS480\csv_practice\results.csv 

select sname,Students.snum,dept,cnum,year,semester
	from Students,enrollments,schclasses 
	where Students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum;

spool off;
