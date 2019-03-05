set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\03_If\03_02.sql */

create or replace procedure Returns(
	p_receipt boolean,
	p_tag boolean,
	p_payment varchar, 
	p_card boolean)as

begin 
	IF (p_receipt and p_tag) then 
		if (p_payment = 'Cash') then
			dbms_output.put_line('Give cash.');
		elsif (p_payment = 'Credit' and p_card) then 
			dbms_output.put_line('Put money on card.');
		else 
			dbms_output.put_line('Give store credit.');
		end if;
	ELSIF (p_tag) then
		dbms_output.put_line('Give store credit.');
	ELSE
		dbms_output.put_line('See supervisor');
	END IF;
end;
/

show err

exec Returns(true,true,'Credit',true);
exec Returns(true,true,'Cash',true);
exec Returns(true,true,'Credit',false);
exec Returns(true,false,'Credit',false);
exec Returns(false,true,'Credit',false);
	
