set echo off
set feedback on
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw2\hw2.sql */

/* #1 Display as transNum| transDate| acctNum| transType| amount */
select transNum,transDate,acctNum,
	decode(transType,'Debit',0,amount) as Credit,
	decode(transType,'Credit',0,amount) as Debit
	from trans;

/* Display transNum| acctNum| amount */
select transNum, acctNum, 
	decode(transType,'Credit',amount,0) + decode(transType,'Debit',-(amount),0) as Amount
	from trans;


	
