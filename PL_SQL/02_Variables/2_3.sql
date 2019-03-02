set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_3.sql */

/* Write a procedure that calculates how many you pay for when its buy 3 get 1 free */
create or replace procedure Ralphs (
	p_buy number) as 
	
	v_pay number(4);

begin 
	v_pay := p_buy - floor((p_buy/4));
	dbms_output.put_line(v_pay);
end;
/

exec Ralphs(1);
exec Ralphs(2);
exec Ralphs(3);
exec Ralphs(4);
exec Ralphs(5);
exec Ralphs(6);
exec Ralphs(7);
exec Ralphs(8);
exec Ralphs(9);
exec Ralphs(10);
exec Ralphs(11);
exec Ralphs(12);
exec Ralphs(13);
exec Ralphs(14);
