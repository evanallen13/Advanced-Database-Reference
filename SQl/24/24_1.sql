set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\24\24_1.sql */

/* #1 Display for class 10110 its grade distrubutuion */
select grade,count(*) as "Number"
	from enrollments
	where callnum = 10110
	group by callnum,grade
	order by grade;

/* #1a Display number by Callnum including all Grade Letter */
select temp2.grade as Grades, count(temp.grade) as Count
	from (select grade
		from enrollments
		where callNum = 10110) temp,
		(select distinct(grade)
		from enrollments) temp2
	where temp2.grade = temp.grade(+)
	group by temp2.grade
	order by temp2.grade;

/* #2 For class 10110 display student count by standing */
select standing, count(*)
	from enrollments,students
	where enrollments.callnum = 10110
	and enrollments.snum = students.snum
	group by standing
	order by standing;

/* #3 Display each callnum and count for Each*/
select callnum, count(*) as Count
	from enrollments
	group by callnum;

/* #3a Display callnum and count for each. 0 for callnum that are Null */
select temp1.callnum as Callnum, count(temp2.callnum) as "Count<<<<"
	from (select distinct(callnum) from enrollments) temp1,
		(select callnum from enrollments) temp2
	where temp1.callNum = temp2.callNum(+)
	group by temp1.callnum
	order by temp1.callnum;

/* #4 Display number of enrollment by year/semester */
select year,semester, count(*) as "Count"
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	group by year,semester;

/* #5 Display as Semester Year| Dept Cnum| Number of Enrollment */
select cast(rpad(decode(semester,'Sp','Spring','Fa','Fall'),6,' ')||' '||year as varchar(15)) as "Semester",
	rpad(dept,3,' ')||' '||cnum as "Course",
	count(*) as "Enrollment"
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	group by semester, year, dept, cnum;

/* #6 Display how many course student 101 has enrolled in Fall 2013 */
select count(*) as "101's classes"
	from enrollments,schclasses
	where enrollments.callnum = schclasses.callnum
	and snum = 101
	and year = 2013
	and semester = 'Sp';

/* #7 Display how many times Andy has taken IS 300 */
select count(*) as "Count"
	from students, enrollments, schclasses
	where students.snum = enrollments.snum
	and enrollments.callnum = schclasses.callnum
	and sname = 'Andy'
	and dept = 'IS'
	and cnum = 300;

/* #8 Display the highest grade Andy got in IS 300 */
select grade
	from students, enrollments, schclasses
	where students.snum = enrollments.snum
	and enrollments.callnum = schclasses.callnum
	and sname = 'Andy'
	and dept = 'IS'
	and cnum = 300;

/* #9 Display courses that Andy has taken twice */
select cnum as "More than 2 classes"
	from students, enrollments, schclasses
	where students.snum = enrollments.snum
	and schclasses.callnum = enrollments.callnum
	and sname = 'Andy'
	group by cnum 
	having count(*) > 2;

/* #10 Display courses where there is an Null grade */
select dept||cnum
	from schclasses
	where dept||cnum not in (select dept||cnum from schclasses, enrollments where schclasses.callNum = enrollments.callNum);

/* #11 Display students who are both in IS 300 and IS 301 in Fall 2013 */
select sname 
	from students, enrollments, schclasses
	where students.snum = enrollments.snum
	and enrollments.callnum = schclasses.callnum
	and dept = 'IS'
	and cnum = 300
	and semester = 'Fa'
	and year = 2013
intersect
select sname 
	from students, enrollments, schclasses
	where students.snum = enrollments.snum
	and enrollments.callnum = schclasses.callnum
	and dept = 'IS'
	and cnum = 301
	and semester = 'Fa'
	and year = 2013;

/* #12 Display courses with more than 2 students */
select dept, cnum, count(snum) as 
	from enrollments, schclasses
	where enrollments.callnum = schclasses.callnum
	group by dept, cnum
	having count(snum) > 2;

/* #13 Display clases where no students are enrolled */
select cnum
	from schclasses
	where cnum not in(select cnum from enrollments,schclasses where enrollments.callnum = schclasses.callnum);

/* #14 Display student who are currently enrolled in multiple sections of the same course */
select snum, count(*)
	from enrollments, schclasses
	where enrollments.callnum = schclasses.callnum
	group by snum, dept, cnum, semester, year
	having count(*) > 2;

/* #15 Find callnum where all grades are assigned; in other words, wvery student in the class recieved a grade */

