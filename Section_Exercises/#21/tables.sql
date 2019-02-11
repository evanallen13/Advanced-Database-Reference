set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#21\tables.sql */

drop table trans;

create table trans(
	transNum number(3) primary key,
	transDate date,
	acctNum varchar2(15),
	transType varchar2(10),
	amount number(4));

insert into trans values (101,'1-Feb-2016','123-0097','Credit',10);
insert into trans values (102,'1-Feb-2016','X089-056','Credit',10);
insert into trans values (103,'2-Feb-2016','123-0097','Debit',8);
insert into trans values (104,'2-Feb-2016','123-0097','Debit',10);
insert into trans values (105,'2-Feb-2016','F3377-D','Credit',10);
insert into trans values (106,'2-Feb-2016','X089-056','Debit',9);
insert into trans values (107,'2-Feb-2016','X089-056','Debit',9);
insert into trans values (108,'3-Feb-2016','123-0097','Credit',9);