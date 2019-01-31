set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\three\3_2.sql */
column totalAmount heading 'Yearly Avg' format $9,999.99
column monthlyAvg heading 'Monthly Avg' format $9,999.99

/* #1 In total how much has customer 101 spent on Amazon */
select sum(amount)
	from orders 
	where custNum = 101;

/* #2 On average how much money does 101 spend a year */
select sum(amount)/count(distinct(to_char(ordDate, 'YYYY'))) as totalAmount
	from orders
	where custNum = 101;

/* #3 on Avg how much does 101 spend per month */
select (sum(amount)/count(distinct(to_char(ordDate, 'YYYY'))))/12 as monthlyAvg
	from orders
	where custNum = 101;

/* #4 on avg how much does every customer spend on Amazon */
select avg(amount)
	from orders
	where to_char(ordDate, 'YYYY') = 2017;

