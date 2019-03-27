set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\05_dml\5_4.sql */


create or replace procedure Update_Standing(
	p_snum students.snum%type)as

	v_credits number(2);
	v_standing number(3) := 0;

begin 
	select sum(crhr) into v_credits
		from enrollments,schclasses,courses
		where p_snum = snum 
		and grade in ('A','B','C','D')
		and enrollments.callnum = schclasses.callnum
		and schclasses.dept = courses.dept 
		and schclasses.cnum = courses.cnum;

	if(v_credits <= 30)then 
		v_standing := 1;
	elsif(v_credits <= 60) then
		v_standing := 2;
	elsif(v_credits <= 90) then 
		v_standing := 3;
	elsif(v_credits > 90) then 
		v_standing := 4;
	end if;

	update students
		set standing = v_standing
		where snum = p_snum;
	commit;
end; 
/

show err;

exec Update_Standing(101);
