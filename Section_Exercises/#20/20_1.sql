set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#20\20_1.sql */

/* Display human numbers, human name and his/her spouse */
select h1.hnum,h1.hname,h1.snum,h2.hname
	from humans h1 join humans h2
	on (h1.snum = h2.hnum)
	order by h1.hnum;

/* Diplay humans whose spouse is mix matched */

