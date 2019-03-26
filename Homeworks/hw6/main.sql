Evan Allen


set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw6\main.sql */
start C:\Users\evana\Desktop\IS480\tables.sql
start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_snum.sql
start C:\Users\evana\Desktop\IS480\homeworks\hw6\valid_callnum.sql
start C:\Users\evana\Desktop\IS480\homeworks\hw6\cap_space.sql
start C:\Users\evana\Desktop\IS480\homeworks\hw6\credit_space.sql

spool C:\Users\evana\Desktop\IS480\homeworks\hw6\main.txt;
create or replace procedure AddMe(
	p_snum students.snum%type,
	p_callnum schclasses.callnum%type) as

	v_cap_result varchar2(5);
	p_credit_result varchar2(5);

begin 
	IF(func_valid_snum(p_snum) = 'true') then 
		dbms_output.put_line('Snum: '||p_snum||' Exists');
		If (func_valid_callnum(p_callnum) = 'true') then 
			dbms_output.put_line('Callnum: '||p_callnum||' Exists');

			-- Call procedures for Cap and Credit validation --
			proc_cap_space(p_callnum,v_cap_result);
			proc_credit_space(p_snum, p_callnum,p_credit_result);

			if(v_cap_result = 'true' and p_credit_result = 'true')then
				insert into enrollments(snum,callnum) values(p_snum,p_callnum);
				commit;
				dbms_output.put_line('You have been enrolled!!');
			else 
				if(v_cap_result = 'false') then 
					dbms_output.put_line('Error: Class already full!!');
					end if;
				if(p_credit_result = 'false') then 
					dbms_output.put_line('Error: Students can only take 15 credit hours!!'); 
					end if;
			end if;
		Else
			dbms_output.put_line(func_valid_callnum(p_callnum));
		End If;
	ELSE
		dbms_output.put_line(func_valid_snum(p_snum));

	END IF;
	dbms_output.put_line(chr(10));
end;
/

exec AddMe(102,10115);
exec AddMe(101,10510);
exec AddMe(101,10110);
exec AddMe(156,10110);
exec AddMe(156,10510);

spool off;
