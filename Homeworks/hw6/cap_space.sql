set serveroutput on 
set echo off

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\cap_space.sql */

create or replace procedure proc_cap_space(
	p_callnum schclasses.callnum%type,
	p_cap_result out varchar2)as 

	v_cur_enrolled schclasses.capacity%type;
	v_capacity schclasses.capacity%type;

begin 
	select count(*) into v_cur_enrolled
		from enrollments 
		where callnum = p_callnum;

	select capacity into v_capacity
		from schclasses
		where callnum = p_callnum;

	if ((v_cur_enrolled + 1) > v_capacity) then
		dbms_output.put_line('Class is already full.');
	else 
		p_cap_result := 'true';
	end if;
end;
/

show err;
