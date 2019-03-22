set serveroutput on 
set echo on

spool C:\Users\evana\Desktop\IS480\homeworks\hw4\Q2.txt
/* start C:\Users\evana\Desktop\IS480\homeworks\hw4\Q2.sql */

create or replace procedure DropMe(
	p_snum students.snum%type,
	p_callnum enrollments.callnum%type) as

	v_error_handler number(1);

begin 
	select count(*)
	into v_error_handler
	from enrollments
	where snum = p_snum
	and callnum = p_callnum;

	if (v_error_handler = 1) then 
		update enrollments
			set grade = 'W'
			where snum = p_snum
			and callnum = p_callnum;
		dbms_output.put_line('Updated:'||sql%rowcount);
	elsif (v_error_handler = 0) then 
		dbms_output.put_line('Error: Not enrolled.');
	end if;
end;
/

exec DropMe(101,10285);
exec DropMe(102,10285);
exec DropMe(109,10285);
exec DropMe(105,10130);
spool off;