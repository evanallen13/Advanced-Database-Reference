set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_0.sql */
declare
	x1 number(3);
	x2 char(15);
	x3 number(3);

begin
	x1 := 5;
	x2 := 'Hello World!';
	x3 := x1 + 3;
	x1 := x1 + 1;

	dbms_output.put_line ('x1 is: '||x1);
	dbms_output.put_line ('x2 is: '||x2);
	dbms_output.put_line ('x3 is: '||x3);
end;
/