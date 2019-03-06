set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\04_loops\04_2.sql */

create or replace procedure PrintWholeTable as

begin 
	FOR i in 1..9 LOOP 
		for e in 1..9 loop 
			dbms_output.put_line(i||'x'||e||'='||i*e);
		end loop;
	END LOOP;
end;
/
show err;
exec PrintWholeTable();