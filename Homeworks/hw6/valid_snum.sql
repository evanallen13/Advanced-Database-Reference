set serveroutput on 
set echo off

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_snum.sql */

create or replace function func_valid_snum(
		p_snum students.snum%type)
		Return varchar2 as 
		v_handler number(1);

begin 
	select count(*) into v_handler
		from students
		where snum = p_snum;
	if (v_handler = 1) then 
		return 'true';
	else 
		return 'Error: Could not validate Snum '||p_snum;
	end if;
end;
/
show err;