set echo off
set feedback on
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\21\study_practice.sql */

select transNum, transDate, acctNum,
	cast(decode(transType, 'Credit',amount,0) as varchar2(7)) as Credit,
	cast(decode(transType, 'Debit',amount,0) as varchar2(7)) as Debit
	from trans;

select transNum, transDate, acctNum,
	lpad(cast(decode(transType,'Credit',amount,0) - decode(transType,'Debit',amount,0) as varchar2(7)), as Amount
	from trans;