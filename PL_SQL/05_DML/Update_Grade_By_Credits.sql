set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\05_dml\Update_Grade_By_Credits.sql */

create or replace procedure Update_GPA(
	p_snum students.snum%type)as 

	v_gpa students.gpa%type;
begin 
	select sum(decode(grade,'A',4,'B',3,'C',2,'D',1,'F',0)) / sum(crhr) into v_gpa
		from students, enrollments, schclasses, courses
		where students.snum = p_snum
		and students.snum = enrollments.snum
		and enrollments.callnum = schclasses.callnum
		and schclasses.dept = courses.dept
		and schclasses.cnum = courses.cnum;

	update students
		set gpa = v_gpa
		where snum = p_snum;
	dbms_output.put_line('Records updated: '||sql%rowcount);
	commit;


end;
/

show err;

exec Update_GPA(101);

select sum(decode(grade,'A',4,'B',3,'C',2,'D',1,'F',0)),sum(crhr) from students, enrollments, schclasses, courses
		where students.snum = 101
		and students.snum = enrollments.snum
		and enrollments.callnum = schclasses.callnum
		and schclasses.dept = courses.dept
		and schclasses.cnum = courses.cnum;
