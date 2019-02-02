set echo off
set feedback off
set verify off
set heading off
set serveroutput on

/* start C:\Users\evana\Desktop\IS480\if_practice\if_practice.sql */
/* declare 
	x number(2) := 7; */

accept x prompt "Enter number: ";

begin 
	if (&x > 5) then 
		dbms_output.put_line ('Over');
	elsif (&x < 5) then 
		dbms_output.put_line('Under');
	else 
		dbms_output.put_line('Equal');
	end if;
end;
/