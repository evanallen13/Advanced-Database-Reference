set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\practices\outter_join_practice\outer_join.sql */

select loan.loanNo,custNo
	from loan 
	left join customers
	on loan.loanNo = customers.loanNo;

select loan.loanNo, custNo
	from loan, customers
	where loan.loanNo = customers.loanNo(+);