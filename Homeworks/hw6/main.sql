set serveroutput on 
set echo off

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\main.sql */
start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_snum.sql
start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_callnum.sql
start C:\Users\evana\Desktop\IS480\homeworks\hw6\cap_space.sql

create or replace procedure AddMe(
	p_snum students.snum%type,
	p_callnum schclasses.callnum%type) as

	v_cap_result varchar2(5);

begin 
	IF(func_valid_snum(p_snum) = 'true') then 
		dbms_output.put_line('Snum: '||p_snum||' Exists');
		If (func_valid_callnum(p_callnum) = 'true') then 
			dbms_output.put_line('Callnum: '||p_callnum||' Exists');
			proc_cap_space(p_callnum,v_cap_result);-------------
			if(v_cap_result = 'true')then
				dbms_output.put_line('Enrolled');
			end if;
		Else
			dbms_output.put_line(func_valid_callnum(p_callnum));
		End If;
	ELSE
		dbms_output.put_line(func_valid_snum(p_snum));

	END IF;
end;
/

show err;

exec AddMe(101,10110);
exec AddMe(156,10110);
exec AddMe(101,10510);