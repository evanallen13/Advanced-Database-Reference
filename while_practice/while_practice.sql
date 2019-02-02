set echo off
set feedback off
set verify off
set heading off
set serveroutput on

/* start C:\Users\evana\Desktop\IS480\while_practice\while_practice.sql */

declare 
	n number(2) := 0;

begin 
	while n <= 10 loop 
		dbms_output.put_line(n);
		n := n+1;
	end loop;
end;
/