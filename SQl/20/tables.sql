set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#20\tables.sql */
drop table humans;

create table Humans(
	Hnum number(3) primary key,
	hname varchar2(10),
	Snum number(3));

insert into humans values (101,'Adam',102);
insert into humans values (102,'Eve	',101);
insert into humans values (103,'Cindy',104);
insert into humans values (104,'David',105);
insert into humans values (105,'Ellen',Null);
insert into humans values (106,'Frank',107);
insert into humans values (107,'George ',106);
