
/* start C:\Users\evana\Desktop\IS480\one\1_2Querry.sql */

/* 1 */
select table_name 
	from user_tables;

/* 2 */
describe Students;
describe Enrollments;
describe SchClasses;

/* 3 */
select * 
	from Students;

select * 
	from Enrollments;

select * 
	from SchClasses;

/* 4 */
insert into Students(SNum,SName)
	values(107,'George');

/* 5 */
select SName,Major 
	from Students;

/* 6 */
update Students
	set GPA = 4.0,
	major = 'IS'
	where SNUM = 102;

/* 7 */
commit;

/* 8 */
delete from Enrollments
	where SNUM = 101;

/* 9 */
rollback;

/* 10 */
select Students.SName 
	from Enrollments,Students,SchClasses
	where Enrollments.CallNum = SchClasses.CallNum
	and Enrollments.SNUM = Students.SNum
	and Year = 2014;

/* 11 */
select Students.SNum,SName,CallNum
	from Enrollments,Students
	where Enrollments.SNum = Students.SNum
	and Enrollments.Grade is Null;

/* 12 */
select grade
	from Enrollments,SchClasses
	where Enrollments.CallNum = SchClasses.CallNum
	and SNum = 101
	and DEPT = 'IS'
	and Cnum = 300
	and year = 2009;

/* 13 */
select Enrollments.CallNum, Dept, Cnum 
	from Enrollments,SchClasses
	where Enrollments.CallNum = SchClasses.CallNum
	and SNum = 101
	and Grade = 'A';

/* 14 */
select * 
	from Students
	where SName like 'C%';