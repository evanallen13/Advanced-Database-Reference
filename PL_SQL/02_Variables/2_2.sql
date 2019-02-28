set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_2.sql */

/* Write a procedure    */
create or replace procedure Ralphs (
	v_pay number) as 
	
	p_buy number(4);

begin 
	p_buy := mod(v_pay,4);
	dbms_output.put_line(p_buy);
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
