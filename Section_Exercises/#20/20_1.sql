set echo off
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
set feedback off
set verify off
set heading off

/* start C:\Users\evana\Desktop\IS480\section_exercises\#20\20_1.sql */

spool C:\Users\evana\Desktop\IS480\section_exercises\#20\20_1.csv
/* Display human numbers, human name and his/her spouse */
select h1.hnum,h1.hname,h1.snum,h2.hname
	from humans h1 join humans h2
	on (h1.snum = h2.hnum)
	order by h1.hnum;

spool off;



