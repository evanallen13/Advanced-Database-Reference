set serveroutput on 
set echo on

spool C:\Users\evana\Desktop\IS480\homeworks\hw3\2_3.txt
/* start C:\Users\evana\Desktop\IS480\homeworks\hw3\2_3.sql */

/* Write a procedure that calculates how many you pay for when its buy 3 get 1 free */
create or replace procedure Ralphs (
	p_buy number) as 
	
	v_pay number(4);

begin 
	v_pay := p_buy - floor((p_buy/4));
	dbms_output.put_line(v_pay);
end;
/


exec Ralphs(5);
exec Ralphs(8);
exec Ralphs(12);
spool off;