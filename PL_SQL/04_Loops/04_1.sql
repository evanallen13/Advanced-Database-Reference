set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\04_loops\04_1.sql */

create or replace procedure PrintTable(
	p_BaseNumber number) as

begin 
	FOR i in 1..9 LOOP
		dbms_output.put_line(p_BaseNumber||'x'||i||'='||i*p_BaseNumber);
	END LOOP;
end;
/
show err;
exec PrintTable(2);