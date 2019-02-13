set echo off
set feedback off
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#7\7_1.sql */

/* Send a bill to customers of how much they owe */
select -(least(accountBalance,0)) as Amount
	from Customers;

/* Customers are give then first 1000 miles free
Display how much east customer owes */
select cname,totalMileage, 
	decode(least(totalMileage - 1000, 0),0,0,(1000 - totalMileage)) as Left
	from Customers;

