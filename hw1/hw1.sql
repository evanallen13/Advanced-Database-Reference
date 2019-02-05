set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\hw1\hw1.sql */

/* Display Sname of Students who recieved an A in IS 380 and whis is not an IS major */
select sname 
	from Students,enrollments,schclasses 
	where Students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum
	and dept = 'IS' 
	and cnum = '300'
	and grade = 'A'
	and major != 'IS';

/* Display zip codes where there are more than 200 freshman students */
select zip, count(*)
	from stu 
	where standing = 1 
	group by zip
	having count(*) > 200;

/* What is the average spending pf prime vs. non-prime members per person */
select prime, sum(amount)/count(amount) as Average 
	from amazon, customers
	where customers.custNum = amazon.custNum
	group by prime;
