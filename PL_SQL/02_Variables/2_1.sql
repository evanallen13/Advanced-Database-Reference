set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\02_Variables\2_1.sql */

/* write procedure with two which outputs them +, -, * and / */
create or replace procedure ps1(
	x1 number,
	x2 number) as

	y1 number(2);
	y2 number(2);
	y3 number(2);
	y4 number(2);

begin 
	y1 := x1 + x2;
	y2 := x1 - x2;
	y3 := x1 * x2;
	y4 := x1 / x2;

	dbms_output.put_line ('y1: '||y1);
	dbms_output.put_line ('y2: '||y2);
	dbms_output.put_line ('y3: '||y3);
	dbms_output.put_line ('y4: '||y4);

end;
/

exec ps1(6,3);
exec ps1(10,2);
