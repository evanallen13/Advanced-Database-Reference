set echo on
set feedback on
set verify on
set heading on
set serveroutput on

/* start C:\Users\evana\Desktop\IS480\decode_practice\querry.sql */

/* Display Major, Males avg Gpa, Female avg Gpa and dif */
select major,
	avg(decode(gender,'M',gpa)) as Male,
	avg(decode(gender,'F',gpa)) as Female,
	avg(decode(gender,'M',gpa)) - avg(decode(gender,'F',gpa)) as Diff
	from students
	group by major;

/* Display Major, Probation, Total, % */
select major,
	count(decode(status,'Probation',snum)) as Probation,
	count(*) as Total,
	round((count(decode(status,'Probation',snum)))/ count(*),2) as Percent
	from students
	group by major;