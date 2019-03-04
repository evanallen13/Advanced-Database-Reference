set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_8.sql */

create or replace procedure MyRemoveOne (
	p_text varchar,
	p_char varchar) as 

	v_Result varchar(15);

begin 
	v_Result := (substr(p_char,1,(instr(p_char,p_text))-1))||(substr(p_char,(instr(p_char,p_text))+1));
	dbms_output.put_line(v_Result);
end;
/

exec MyRemoveOne('-','281-1896');
exec MyRemoveOne('*','28118*96');	
