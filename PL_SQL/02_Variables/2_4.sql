set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_3.sql */

/* Buy 4 get 1 free deal */
create or replace procedure Raplphs(
	v_pay number) as
	p_buy number(4);

	begin
	p_buy := v_pay - floor(v_pay/5);
	dbms_output.put_line

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
