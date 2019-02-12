set echo off
set feedback on
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#21\21_1.sql */

/* #1 Display as amount by Qtr */
select decode(to_char(transDate,'MM'),1,'Q1',2,'Q1',3,'Q1',4,'Q2',5,'Q2',6,'Q2',7,'Q3',8,'Q3',9,'Q3',10,'Q4',11,'Q4',12,'Q2')as QTR,
	count(*) as Amount
	from trans
	group by decode(to_char(transDate,'MM'),1,'Q1',2,'Q1',3,'Q1',4,'Q2',5,'Q2',6,'Q2',7,'Q3',8,'Q3',9,'Q3',10,'Q4',11,'Q4',12,'Q2');

/* #2 Display as transNum| transDate| acctNum| transType| amount */
select transNum,transDate,acctNum,
	decode(transType,'Debit',0,amount) as Credit,
	decode(transType,'Credit',0,amount) as Debit
	from trans;

/* #3 Display transNum| acctNum| amount */
select transNum, acctNum, 
	decode(transType,'Credit',amount,0) + decode(transType,'Debit',-(amount),0) as Amount
	from trans;


	
