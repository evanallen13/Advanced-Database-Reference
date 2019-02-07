set echo on
set feedback off
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#14\14_1.sql */

/* Write a SQL statement to populate the last name of each student */
select substr(sname, 1,instr(sname,',')-1) as "Last Name"
	from studentEmail;

/* Write a SQL statement to populate the first name of each student */
select substr(sname,(instr(sname,','))+1) as "Fist Name"
	from studentEmail;

/* Display the portion of text before the @ sign */
select substr(emails,1,instr(emails,'@')-1) 
	from studentEmail;

/* Populate the portion before the @ sign as Username */
update studentEmail
	set username = substr(emails,1,instr(emails,'@')-1);

/* display text after the @ and before the . */
select substr(substr(emails,instr(emails,'@')+1),instr(substr(emails,instr(emails,'@')+1),'.'))
	from studentEmail;

/* Populate the portion in between the @ and . */
update studentEmail
	set emailHost = substr(substr(emails,instr(emails,'@')+1),instr(substr(emails,instr(emails,'@')+1),'.'));





select emails, username, emailhost
	from studentEmail;
