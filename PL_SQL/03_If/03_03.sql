set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\03_If\03_03.sql */

create or replace procedure StudentStatus(
	p_CreditHour number) as 

begin
	if (p_CreditHour <= 30) then 
		dbms_output.put_line('Freshman');
	elsif (p_CreditHour <= 60) then 
		dbms_output.put_line('Sophmore');
	elsif (p_CreditHour <= 61) then 
		dbms_output.put_line('Junior');
	else 
		dbms_output.put_line('Senior');
 	end if;
end;
/

exec StudentStatus(28);
exec StudentStatus(31);
exec StudentStatus(65);
exec StudentStatus(105);