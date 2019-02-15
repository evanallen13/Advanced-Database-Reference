set echo off
set feedback off
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#13\13_1.sql */

/* Display the position of "-" */
select accountnum, instr(accountNum,'-') as Num
	from accounts;

/* Display the Prefix of "-" */
select accountnum, substr(accountnum,1,(instr(accountNum,'-')-1))
	from accounts;

/* Update accounts table to add Prefix and Suffix */
update accounts
	set  prefix = substr(accountnum,1,(instr(accountnum,'-')-1)),
	suffix = substr(accountnum,instr(accountnum,'-')+1);

/* Display accountnum without "-" */
select substr(accountnum,1,(instr(accountnum,'-')-1))||substr(accountnum,instr(accountnum,'-')+1)
	from accounts;