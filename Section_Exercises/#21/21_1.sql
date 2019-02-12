set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#21\21_1.sql */

/* #1 Display students who are not IS majors */
select count(*)
	from students
	where nvl(major,'N/A') != 'IS';


/* #2 Diplay as transNum| transDate| acctNum| amount| 
 	select transNum, transDate, acctNum, */


/* #3 Display account_number without '-' */
select acctNum,substr(acctNum,1,instr(acctNum,'-')-1)||substr(acctNum,instr(acctNum,'-')+1)
	from trans; 

/* #4 Display the potrion of the text after @ and before . */
select substr(substr(emails,1,instr(emails,'.')-1),instr(emails,'@')+1)
	from trans;

/* #5 Find the remainder of 7/2 */
select mod(7,2) from dual;

/* #6 Find the integer portion of 7/2 */
select trunc(7/2) from dual;

/* #7 Find the rounded result of 7/2 */
select round(7/2) from dual;
	
