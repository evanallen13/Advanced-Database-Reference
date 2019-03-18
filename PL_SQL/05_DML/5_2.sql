set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\05_dml\5_2.sql */

create or replace procedure AddMe(
	p_snum students.snum%type,
	p_callnum enrollments.callnum%type) as 
	
	v_s_standing students.standing%type;
	v_c_standing courses.standing%type;
begin 
	select standing into v_s_standing
		from students
		where students.snum = p_snum;

	select standing into v_c_standing
		from courses, schClasses
		where schClasses.callnum = p_callnum
		and schClasses.dept = courses.dept 
		and schClasses.cnum = courses.cnum;

	if v_s_standing >= v_c_standing then 
		dbms_output.put_line('Yes');
	elsif(v_s_standing < v_c_standing) then 
		dbms_output.put_line('No');
	end if;
end; 
/

show errors;

Exec AddMe(104,10195);
Exec AddMe(106,10195);
Exec AddMe(113,10195);
