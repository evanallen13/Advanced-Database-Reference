set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\04_loops\04_5.sql */

create or replace procedure MyRemoveAll(
	p_text varchar2,
	p_char varchar2) as 

	v_text varchar2(15) := p_text;

begin 
	while ((instr(v_text,p_char)) > 0) loop 
		if ((instr(v_text,p_char)) > 0) then 
			v_text := substr(v_text,1,(instr(v_text,p_char) -1))||substr(v_text,instr(v_text,p_char));
			dbms_output.put_line(v_text);
		else 
			exit;
		end if;
	end loop;
end;
/
show err;
exec MyRemoveAll('213-456-67-8919','-');

