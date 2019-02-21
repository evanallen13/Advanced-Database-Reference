set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\six\6_1.sql */

/* out of 4 hw assignments the lowest one is dropped write a query that  displays students and their score */
select snum,sname,(sum(hw1+hw2+hw3+hw4)-least(hw1,hw2,hw3,hw4)) as 'Total Points'
	from IS380
	group by snum,sname,least(hw1,hw2,hw3,hw4)
	order by snum;

/* Display all students and their highest homework grade */
select snum,sname, greatest(hw1,hw2,hw3,hw4)
	from IS380;

/* Display all students and their lowest homework grade */
select snum,sname, least(hw1,hw2,hw3,hw4)
	from IS380;

