set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\credit_space.sql */

create or replace procedure proc_credit_space(
	p_snum students.snum%type,
	p_callnum schclasses.callnum%type,
	p_credit_space out varchar2)as 

	v_class_credits number(3);
	v_student_current_credits number(3);

begin 
	select crhr into v_class_credits
		from courses, schclasses
		where callnum = p_callnum
		and courses.dept = schclasses.dept
		and courses.cnum = schclasses.cnum;

	select sum(crhr) into v_student_current_credits
		from courses, enrollments
		where snum = p_snum;

	if(v_class_credits + v_student_current_credits <= 15) then 
		p_credit_space := 'true';
	else 
		p_credit_space := 'false';
	end if;
end; 
/

show err;




