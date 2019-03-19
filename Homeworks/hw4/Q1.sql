set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw4\Q1.sql */

create or replace procedure AddMe(
	p_snum students.snum%type,
	p_callnum enrollments.callnum%type) as

	v_capacity schclasses.capacity%type;
	v_current_enrolled schclasses.capacity%type;
	v_error_handler number(1);

begin 
	select capacity 
	into v_capacity
	from schclasses
	where callnum = p_callnum;

	select count(*) 
	into v_current_enrolled
	from enrollments
	where callnum = p_callnum
	group by callnum;

	IF v_capacity <= (v_current_enrolled + 1) then 
		dbms_output.put_line('Class is already full!!');
	ELSIF v_capacity > (v_current_enrolled + 1) then 
		select count(*) into v_error_handler 
		from enrollments 
		where snum = p_snum 
		and callnum = p_callnum;
			if (v_error_handler = 0) then
				insert into enrollments(snum, callnum) values (p_snum,p_callnum);
				commit;
				dbms_output.put_line('You are enrolled!!');
			else 
				dbms_output.put_line('You are already enrolled');
		end if;
	end IF;
end;
/

show  err;
exec AddMe(101,10285);