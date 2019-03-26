set serveroutput on 
set echo off

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_callnum.sql */

create or replace function func_valid_callnum(
		p_callnum schclasses.callnum%type)
		return varchar2 as 
		v_handler number(1);

begin 
	select count(*) into v_handler
		from schclasses 
		where callnum = p_callnum;
	if (v_handler = 1 ) then 
		return 'true';
	else 
		return 'Error: Could not validate Callnum '||p_callnum;
	end if;
end;
/

