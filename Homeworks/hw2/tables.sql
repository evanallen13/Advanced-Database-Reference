set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\homeworks\hw2\tables.sql */

drop table trans;
drop table students;

create table trans(
	transNum number(3) primary key,
	transDate date,
	acctNum varchar2(15),
	transType varchar2(10),
	amount number(4),
	emails varchar2(30));

create table students(
	Snum number(3) primary key,
	Sname varchar2(10),
	standing number(2),
	major varchar2(3),
	gpa number(2,1),
	gender varchar2(2),
	zip number(5));

insert into trans values (101,'1-Feb-2016','123-0097','Credit',10,'jsmith@csulb.edu');
insert into trans values (102,'1-Feb-2016','X089-056','Credit',10,'aliu@chapman.edu');
insert into trans values (103,'2-Feb-2016','123-0097','Debit',8,'bob1@msn.com');
insert into trans values (104,'2-Feb-2016','123-0097','Debit',10,'skywalker@yahoo.com');
insert into trans values (105,'2-Feb-2016','F3377-D','Credit',10,'bobafetty.com');
insert into trans values (106,'2-Feb-2016','X089-056','Debit',9,'evan@gmail.com');
insert into trans values (107,'2-Feb-2016','X089-056','Debit',9,'darthvader@darkside.com');
insert into trans values (108,'3-Feb-2016','123-0097','Credit',9,'anakinskywalker@lightside.com');

insert into students values (101,'Andy',1,'IS',2.8,'M',91101);
insert into students values (102,'Betty',4,'ACC',3.2,'F',91102);
insert into students values (103,'Cindy',1,'IS',2.5,'F',91101);
insert into students values (104,'David',2,'FIN',3.3,'M',91104);
insert into students values (105,'Ellen',1,'IS',2.8,'M',91102);
insert into students values (106,'Frank',3,'MKT',3.1,'F',91103);
insert into students values (107,'Evan',1,'IS',2.8,'M',91101);