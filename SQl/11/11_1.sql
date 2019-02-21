set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#11\11_1.sql */

/* Pivot table that compares how many students male vs. female */
select count(decode(gender,'M',snum)) as Males,
	count(decode(gender,'F',snum)) as Females
	from students;

/* Pivot table that displays the number of students per major */
select
	count(decode(major,'ACC',snum)) as ACC,
	count(decode(major,'FIN',snum)) as FIN,
	count(decode(major,'IS',snum)) as "IS",
	count(decode(major,'MKT',snum)) as MKT
	from students;

/* Pivot table that displays gender compared to the number of students per major */
select decode(gender,'M','Male','F','Female') as Gender,
	count(decode(major,'ACC',snum)) as ACC,
	count(decode(major,'FIN',snum)) as FIN,
	count(decode(major,'IS',snum)) as "IS",
	count(decode(major,'MKT',snum)) as MKT
	from students
	group by gender;

/* Pivot table that displays the number of students per major compared gender */
select major,
	count(decode(gender,'M',snum)) as Male,
	count(decode(gender,'F',snum)) as Female
	from students
	group by major;
