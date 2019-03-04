set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_10.sql */

create or replace procedure ps_2_10 (
	p_text varchar2,
	p_char_1 varchar2, 
	p_char_2 varchar2)as 
	
	v_result varchar(20);

begin 
	
	v_result := substr(p_text,1,(instr(p_text,p_char_1)-1)||p_char_2||substr(p_text,(instr(p_text,p_char_1)+1);*/
	dbms_output.put_line(result);

end;
/

exec ps_2_10('281-1896','-','*');