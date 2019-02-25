set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\24\01.sql */

/* Decode */
select sname, 
	decode(standing,4,'Senior',3,'Junior',2,'Sophmore',1,'Freshman','None') as "Class"
	from students;

select gpa,decode(floor(gpa),4,'A',3,'B',2,'C',1,'D',0)
	from students;


select major,
	count(decode(gender,'M','Male')) as Male,
	count(decode(gender,'F','Female')) as Female
	from students
	group by major;

select cast(dept as varchar2(4)) as "dept",
	cast(cnum as number(3)) as "Cnun",
	ctitle
	from courses;

select dept
	from courses
	order by
	case 
		when dept = 'IS' then 1 
		when dept = 'BIO' then 2
		when dept = 'ACC' then 3
	end;
