set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\04_loops\04_4.sql */

create or replace procedure MyFill(
	p_start number,
	p_step number,
	p_times number) as

	v_start number(4) := p_start;
begin 
	for i in 1..p_times loop
		dbms_output.put_line(v_start);
		v_start := (v_start + p_step);
	end loop;
end;
/
show err;
exec MyFill(1,2,5);
exec MyFill(2,2,5);