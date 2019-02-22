set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\practices\outter_join_practice\tables.sql */

drop table loan;
drop table customers;

create table loan(
	loanNo varchar2(2),
	branch varchar2(2),
	amt number(6,2),
	primary key(loanNo,branch));

create table customers( 
	custNo varchar2(2),
	loanNo varchar2(2),
	primary key(custNo,loanNo));

insert into loan values('L1','B1',1000);
insert into loan values('L2','B2',2000);
insert into loan values('L3','B3',1500);

insert into customers values('C1','L1');
insert into customers values('C2','L2');
insert into customers values('C3','L4');