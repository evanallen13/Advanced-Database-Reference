set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#21\tables.sql */

create table trans(
	transNum number(3) primary key,
	tranaDate date,
	acctNum varchar2(15),
	transType varchar2(10),
	amount number(4));

