set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\three\3_1.sql */

column totalSpent heading 'Total' format $9,999
column avgSpent heading 'Avg' format $9,999

/* #1 display males vs females customers */
select gender, count(*)
	from customers
	group by gender;

/* #2 display Prime vs non prime customers */
select prime, count(*)
	from customers
	group by prime;

/* #3 display total spend male vs female */
select gender, sum(amount) as totalSpent
	from customers, orders
	where customers.custnum = orders.custnum
	group by gender;

/* #4 diplay total spend Prime vs Non-Prime */
select prime, sum(amount) as totalSpent
	from customers, orders
	where customers.custnum = orders.custnum
	group by prime;

/* #5 avg spending Male vs. Female */
select gender, avg(amount) as avgSpent
	from customers, orders
	where customers.custnum = orders.custnum
	group by gender;

/* #6 avg spending Prime vs. Non-Prime */
select prime, avg(amount) as avgSpent
	from customers, orders 
	where customers.custnum = orders.custnum
	group by prime;