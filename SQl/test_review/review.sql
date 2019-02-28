set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\test_review\review.sql */

select temp1.cnum, cname, amt
	from (select distinct(cnum),cname from customers) temp1,
	(select cnum, sum(amount) as amt from orders where status = 'X' group by cnum) temp2
	where temp1.cnum = temp2.cnum;
