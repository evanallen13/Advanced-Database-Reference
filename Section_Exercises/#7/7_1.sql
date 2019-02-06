set echo off
set feedback off
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\#7\7_1.sql */

/* Display the Account Balance */
select Cname, accountBalance
	from Customers;

/* Display how many miles each user has until they hit the limit 1000 miles */
select Cname as "Users Under", 1000 - totalMileage as "Miles Left to Limit"
	from Customers
	where totalMileage <= 1000;

/* Display whos over the mile limit and how many they are over */
select Cname as "User Over", ABS(1000 - totalMileage) as "Total Miles Over"
	from Customers
	where totalMileage > 1000;
