set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\05_dml\insert.sql */

create or replace procedure AddMe (
	p_snum enrollments.snum%type,
	p_callnum enrollments.callnum%type) as 

begin 
	insert into enrollments(snum,callnum) values (p_snum,p_callnum);
		dbms_output.put_line('Rows created: 'sql%rowcount);

end;
/

show errors;
exec AddMe(110,10255);
