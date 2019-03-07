set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\04_loops\04_3.sql */

create or replace procedure LoveWizard(
	p_MagicNumber number)as 

	mes varchar2(15);
begin
	for i in 1..p_MagicNumber loop 
		if (i = p_MagicNumber) then 
			dbms_output.put_line(chr(13));
			if (mod(i,2) =0 ) then 
				dbms_output.put_line('===> He loves you!!!');
			else
				dbms_output.put_line('===> He loves you not :-(');
			end if;
		elsif (mod(i,2) !=0 ) then 
			dbms_output.put_line('He loves you...');
		else 
			dbms_output.put_line('He loves you not...');
		end if;
	end loop;
end;
/
exec LoveWizard(7);