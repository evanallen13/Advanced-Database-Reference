set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\03_If\2_17.sql */
create or replace procedure amount(
	p_pay number,
	p_amountDue number)as 

	v_Diff number(4) := (p_amountDue - p_pay);

begin
	IF (v_Diff < 0) then 
		dbms_output.put_line('You owe us more money!');
	ELSIF (v_Diff = 0) then 
		dbms_output.put_line('No change needed Thank you!');
	ELSE 
		if (floor(v_Diff/20) >= 1) then 
			dbms_output.put_line(floor(v_Diff/20)||' Twenty Dollar Bill');
			v_Diff := v_Diff - (floor(v_Diff/20)*20);
		end if;

		if (floor(v_Diff/10) >= 1) then 
			dbms_output.put_line(floor(v_Diff/10)||' Ten Dollar Bill.');
			v_Diff := v_Diff - (floor(v_Diff/10)*10);
		end if;

		if (floor(v_Diff/5) >= 1) then 
		dbms_output.put_line(floor(v_Diff/5)||' Fives Dollar Bill.');
		v_Diff := v_Diff - (floor(v_Diff/5)*5);
		end if;

		if (floor(v_Diff) >= 1) then
		dbms_output.put_line(floor(v_Diff)||' One Dollar Bill.');
		end if;
	end if;
end;
/

Exec amount(12,200);
Exec amount(34,100);
Exec amount(13,100);
Exec amount(10,200);
Exec amount(5,10);