set echo on
set feedback off
set verify on
set heading off
set serveroutput on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#13\tables.sql */

drop table accounts;

create table accounts(
	accountNum varchar2(15) primary key,
	prefix varchar(8),
	suffix varchar(8));

insert into accounts(accountNum) values ('123-0097');
insert into accounts(accountNum) values ('X089-056');
insert into accounts(accountNum) values ('123-0098');
insert into accounts(accountNum) values ('123-0099');
insert into accounts(accountNum) values ('F3377-D');
insert into accounts(accountNum) values ('X089-057');
insert into accounts(accountNum) values ('X089-058');
insert into accounts(accountNum) values ('3-009712');