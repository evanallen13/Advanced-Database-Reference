set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\04_loops\04_3.sql */

create or replace procedure LoveWizard(
	p_MagicNumber number)as 

	mes varchar2(15);
begin
	for i in 1..p_MagicNumber loop 
		if (mod(i/2)=0) then 
			mes := ('He loves you...');
		else 
			mes := ('He loves you not...');
		end if;
		dbms_output.put_line(mes);
	end loop;
end;
/
show err;
exec LoveWizard;