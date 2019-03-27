set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\06_dml_functions\Grade_Point.sql */

create or replace function Grade_Point(
	p_Letter_Grade varchar2) 
	return number as
	v_Number_Grade number(1); 

begin 
	if (p_Letter_Grade = 'A') then 
		v_Number_Grade := 1;
	elsif (p_Letter_Grade = 'B') then 
		v_Number_Grade := 2;

	end if;
	dbms_output.put_line(v_Number_Grade);

end;
/

show err;

Grade_Point('A');