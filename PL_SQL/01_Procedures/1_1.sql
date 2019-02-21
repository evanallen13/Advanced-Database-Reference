set serveroutput on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\01_Procedures\1_1.sql */

/* Print Hello World! */
create or replace procedure SayHello as
	begin
		dbms_output.put_line ('Hello World Again!');
	end;
	/

execute SayHi;

/* confirm that procedure is in account */
select cast(object_name as varchar2(15)) as Object_Name, 
	cast(object_type as varchar2(15)) as Object_Type
	from user_objects;

/* Display code for SayHello procedure */
select line, cast(text as varchar2(50))
	from user_source;