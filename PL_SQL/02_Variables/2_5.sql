set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_5.sql */

create or replace procedure Ralphs(
	p_buy number,
	p_x number)as 

	v_pay number(4);

begin 
	v_pay := p_buy - floor((p_buy/p_x));
	dbms_output.put_line(v_pay);

end;
/

exec Ralphs(1,2);
exec Ralphs(2,4);
exec Ralphs(3,6);
exec Ralphs(4,7);
exec Ralphs(10,5);

