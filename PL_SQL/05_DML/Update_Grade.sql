set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\05_dml\Update_Grade.sql */

create or replace procedure Update_Gpa(
	p_snum students.snum%type)as 

	v_gpa number(3,2);

begin 

	select avg(decode(grade,'A',4.0,'B',3.0,'C',2.0,'D',1.0,'F',0)) into v_gpa
		from enrollments
		where grade in ('A','B','C','D','F')
		and snum = p_snum;

	update students
		set gpa = v_gpa
		where snum = p_snum;
	dbms_output.put_line('Rows affected: '||sql%rowcount);
	commit; 
end;
/
show err;
exec Update_Gpa(102);