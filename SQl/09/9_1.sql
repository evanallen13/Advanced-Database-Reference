set echo off
set feedback off
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#9\9_1.sql */

/* #1 Display students Female vs. Male */
select sum(decode(gender,'M',1,0)) as Males, sum(decode(gender,'F',1,0)) as Females
	from stu;

/* #2 Display number of students in each major */
select sum(decode(major,'IS',1,0)) as "IS",
	sum(decode(major,'ACC',1,0)) as ACC,
	sum(decode(major,'Fin',1,0)) as FIN,
	sum(decode(major,'MKT',1,0)) as MKT
	from stu;

/* #3 Display number of students by gender and by major */
select decode(gender,'M','Male','F','Female')as Gender,
	sum(decode(major,'IS',1,0)) as "IS",
	sum(decode(major,'ACC',1,0)) as ACC,
	sum(decode(major,'Fin',1,0)) as FIN,
	sum(decode(major,'MKT',1,0)) as MKT
	from stu
	group by gender; 

/* #4 Display number of students by major and by gender */
select major as Major,
	sum(decode(gender,'M',1,0)) as Male,
	sum(decode(gender,'F',1,0)) as Female
	from stu
	group by major
	order by decode(major,'IS',1,'MKT',2,'ACT',3,'FIN',4);

