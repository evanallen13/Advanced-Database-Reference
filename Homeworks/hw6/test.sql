set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\test.sql */
/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_callnum.sql */
/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\cap_space.sql */
start C:\Users\evana\Desktop\IS480\homeworks\hw6\credit_space.sql 

create or replace procedure TestMe(
	p_snum students.snum%type,
	p_callnum schclasses.callnum%type) as

	p_credit_space varchar2(5);
begin 
	proc_credit_space(p_snum, p_callnum,p_credit_space);
	dbms_output.put_line(p_credit_space);
end;
/

show err;

exec TestMe(101,10110);
exec TestMe(156,10110);