set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\01_Procedures\1_2.sql */

/* Create SayWhat that inputs one parameter */
create or replace procedure SayWhat(
	p_greeting varchar2) as 
	begin 
		dbms_output.put_line(p_greeting||', everyone.');
	end;
	/

execute SayWhat('Hi');

/* Create Greeting which takes 2 parameters */
create or replace procedure Greeting(
	p_greeting varchar2,
	p_name varchar2) as
	begin 
		dbms_output.put_line(p_greeting||', '||p_name);
	end;
	/

execute Greeting('HI','Evan');

/* Display USER_OBJECTS to display current procedures */
select cast(object_name as varchar2(15)) as NAME, 
	cast(object_type as varchar2(15)) as TYPE
	from USER_OBJECTS;

/* Use USER_SOURCE to see the code of procedures */
select line, text 
	from USER_SOURCE;