set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_7.sql */

create or replace procedure ps2_7(
	p_text varchar,
	p_char varchar) as 

	v_before varchar(15);
	v_after varchar(15);
	begin 

	v_before := substr(p_char,1,(instr(p_char,p_text)-1));
	v_after := substr(p_char,(instr(p_char,p_text)+1));

	dbms_output.put_line('Before: '||v_before);
	dbms_output.put_line('After: '||v_after);

	end;
	/

exec ps2_7('-','281-1896');
