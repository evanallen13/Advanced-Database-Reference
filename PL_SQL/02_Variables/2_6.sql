set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_6.sql */

create or replace procedure Ralphs(
	p_x number, 
	p_y number) as 
	
	v_pay number(4);
begin 
	v_pay := p_x - floor(((p_x/(p_y+1)));
	dbms_output.put_line(v_pay);
end;
/

exec Ralphs(3,4);
exec Ralphs(4,6);
