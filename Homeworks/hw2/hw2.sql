set echo on
set feedback off
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw2\hw2.sql */
spool C:\Users\evana\Desktop\IS480\homeworks\hw2\hw2.txt

/* #1 Display students who are not IS majors */
select count(*) as Students
	from students
	where nvl(major,'N/A') != 'IS';

/* #2 Diplay as transNum| transDate| acctNum| amount| */
 select transNum, transDate, acctNum,
 	decode(transtype,'Credit',amount,0) - decode(transtype,'Debit',amount,0) as Amount
 	from trans;

/* #3 Display account_number without '-' */
select acctNum,substr(acctNum,1,instr(acctNum,'-')-1)||substr(acctNum,instr(acctNum,'-')+1)  as "AccNum"
	from trans; 

/* #4 Display the potrion of the text after @ and before . */
select substr(substr(emails,1,instr(emails,'.')-1),instr(emails,'@')+1) as "EmailProvider"
	from trans;

/* #5 Find the remainder of 7/2 */
select mod(7,2) as Remainder from dual;

/* #6 Find the integer portion of 7/2 */
select trunc(7/2) as "Integer" from dual;

/* #7 Find the rounded result of 7/2 */
select round(7/2) as Rounded from dual;
	
spool off