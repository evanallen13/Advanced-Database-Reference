set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\03_If\03_01.sql */

create or replace procedure GradePoint(
	p_LetterGrade varchar2)as 
	
	v_NumberGrade number(1);

begin 
	if (p_LetterGrade = 'A') then
		v_NumberGrade := 4;
		dbms_output.put_line(v_NumberGrade);
	elsif (p_LetterGrade = 'B') then 
		v_NumberGrade := 3;
		dbms_output.put_line(v_NumberGrade);
	elsif (p_LetterGrade = 'C') then 
		v_NumberGrade := 2;
		dbms_output.put_line(v_NumberGrade);
	elsif (p_LetterGrade = 'D') then 
		v_NumberGrade := 1;
		dbms_output.put_line(v_NumberGrade);
	else 
		v_NumberGrade := 0;
		dbms_output.put_line(v_NumberGrade);		
	end if;
end;
/
show err

Exec GradePoint('A');
Exec GradePoint('B');
Exec GradePoint('C');
Exec GradePoint('F');
Exec GradePoint('F');