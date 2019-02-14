set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#22\22_1.sql */

/* Find classes that are  not full to capacity */
select schClasses.callNum, schclasses.capacity, temp.Num
	from 
	(select callNum, count(*) as Num
	from enrollments
	group by callNum) temp,
	schclasses
	where temp.callnum = schClasses.callnum
	and temp.num < schclasses.capacity;

/* Find where Students table gpa doesn't match enrollments 
assumming all classes are 3 crd */
select students.snum, students.gpa, temp.avgGpa
	from 
	(select snum, avg(gdpt) as avgGpa
		from enrollments
		group by snum) temp,
	Students
	where Students.snum = temp.snum;