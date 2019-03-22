set serveroutput on 
set echo off

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\test.sql */
/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_callnum.sql 
start C:\Users\evana\Desktop\IS480\homeworks\hw6\cap_space.sql */

create or replace procedure TestMe(
	p_snum students.snum%type,
	p_callnum schclasses.callnum%type) as

	v_cap_space boolean;
begin 
	proc_cap_space(p_callnum,v_cap_space);
	if(v_cap_space)then
		dbms_output.put_line('It worked.');
	end if;
end;
/

show err;

exec TestMe(101,10110);
exec TestMe(156,10110);