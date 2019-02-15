set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#24\tables.sql */

drop table enrollments;
drop table schclasses;
drop table courses;
drop table students;
drop table majors;

create table majors(
	major varchar2(3) primary key,
	mdesc varchar2(30));

create table students(
	Snum number(3) primary key,
	Sname varchar2(10),
	standing number(2),
	major varchar2(3),
	gpa number(2,1),
	gender varchar2(2),
	constraint fk_students_major foreign key (major) references majors(major));

create table courses(
	dept varchar2(3),
	cnum varchar2(3),
	ctitle varchar2(30),
	crhr number(1),
	standing number(1),
	primary key (dept,cnum));

create table schclasses(
	callnum number(5) primary key,
	year number(4),
	semester varchar2(2),
	dept varchar2(3),
	cnum varchar2(3),
	section number(2),
	capacity number(3),
	constraint fk_schclasses_dept_cnum foreign key (dept,cnum) references courses(dept,cnum));

create table enrollments(
	Snum number(3),
	callnum number(5),
	grade varchar2(2),
	gdpt number(2),
	primary key (Snum,callnum),
	constraint fk_enrollments_snum foreign key (Snum) references students(Snum),
	constraint fk_enrollments_callnum foreign key (callnum) references schclasses(callnum));

insert into majors values ('ACC','Accounting');
insert into majors values ('FIN','Finance');
insert into majors values ('IS','Info Sys');
insert into majors values ('MKT','Marketing');
insert into majors values ('BIO','Biology');

insert into students values (101,'Andy',3,'IS',2.8,'M');
insert into students values (102,'Betty',4,'ACC',3.2,'F');
insert into students values (103,'Cindy',2,'IS',2.5,'F');
insert into students values (104,'David',2,'FIN',3.3,'M');
insert into students values (105,'Ellen',1,'IS',2.8,'M');
insert into students values (106,'Frank',3,'MKT',3.1,'F');

insert into courses values ('BIO','101','Biology Lab',1,2);
insert into courses values ('IS','300','Intro to MIS',3,2);
insert into courses values ('IS','301','Statistics',3,3);
insert into courses values ('IS','310','Business Comm',3,3);
insert into courses values ('ACC','300','Basic Accounting',4,3);
insert into courses values ('ACC','480','Advanced Accounting',4,4);

insert into schclasses values (10110,2013,'Sp','IS','300',1,6);
insert into schclasses values (10115,2013,'Sp','IS','300',2,7);
insert into schclasses values (10120,2013,'Sp','BIO','101',1,5);
insert into schclasses values (10125,2013,'Fa','ACC','300',1,5);
insert into schclasses values (10130,2013,'Fa','ACC','300',2,8);

insert into enrollments(snum,callnum,grade) values (102,10130,'C');
insert into enrollments(snum,callnum,grade) values (104,10130,'A');
insert into enrollments(snum,callnum,grade) values (106,10130,'B');
insert into enrollments(snum,callnum,grade) values (101,10130,'A');
insert into enrollments(snum,callnum,grade) values (105,10130,'C');
insert into enrollments(snum,callnum,grade) values (103,10130,'A');
insert into enrollments(snum,callnum,grade) values (102,10125,'C');
insert into enrollments(snum,callnum,grade) values (105,10125,'B');
insert into enrollments(snum,callnum,grade) values (101,10125,'A');
insert into enrollments(snum,callnum,grade) values (103,10125,'D');
insert into enrollments(snum,callnum,grade) values (104,10125,'F');
insert into enrollments(snum,callnum,grade) values (106,10125,'B');
insert into enrollments(snum,callnum,grade) values (101,10120,'F');
insert into enrollments(snum,callnum,grade) values (103,10120,'A');
insert into enrollments(snum,callnum,grade) values (102,10120,'B');
insert into enrollments(snum,callnum,grade) values (106,10120,'B');
insert into enrollments(snum,callnum,grade) values (104,10120,'D');
insert into enrollments(snum,callnum,grade) values (105,10120,'A');
insert into enrollments(snum,callnum,grade) values (104,10115,'A');
insert into enrollments(snum,callnum,grade) values (101,10115,'C');
insert into enrollments(snum,callnum,grade) values (105,10115,'A');
insert into enrollments(snum,callnum,grade) values (103,10115,'D');
insert into enrollments(snum,callnum,grade) values (106,10115,'A');
insert into enrollments(snum,callnum,grade) values (102,10115,'B');
insert into enrollments(snum,callnum,grade) values (105,10110,'C');
insert into enrollments(snum,callnum,grade) values (101,10110,'C');
insert into enrollments(snum,callnum,grade) values (104,10110,'A');
insert into enrollments(snum,callnum,grade) values (106,10110,'B');
insert into enrollments(snum,callnum,grade) values (103,10110,'B');
insert into enrollments(snum,callnum,grade) values (102,10110,'A');

update enrollments
	set gdpt = decode(grade,'A',4,'B',3,'C',2,'D',1,0);
	