set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\hw1\tables.sql */

drop table enrollments;
drop table schclasses;
drop table courses;
drop table students;
drop table majors;

drop table stu;

drop table customers;
drop table amazon;

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
insert into courses values ('MGT',425,'Managment',3,4);
insert into courses values ('IS',380,'Basic Database',4,3);
insert into courses values ('IS',385,'Python',3,3);

insert into schclasses values (10110,2013,'Sp','IS','300',1,45);
insert into schclasses values (10115,2013,'Sp','IS','300',2,35);
insert into schclasses values (10120,2013,'Sp','BIO','101',1,35);
insert into schclasses values (10125,2013,'Fa','ACC','300',1,118);
insert into schclasses values (10130,2013,'Fa','ACC','300',2,33);
insert into schclasses values (10135,2013,'Fa','IS',380,1,25);
insert into schclasses values (10140,2013,'Fa','IS',385,1,33);

insert into enrollments values (101,10110,'A',4);
insert into enrollments values (102,10110,'A',4);
insert into enrollments values (103,10120,'A',4);
insert into enrollments values (101,10125,'C',2);
insert into enrollments values (102,10130,'F',0);
insert into enrollments values (101,10135,'B',3);
insert into enrollments values (101,10140,'C',2);
insert into enrollments values (102,10140,'B',3);
insert into enrollments values (103,10135,'A',4);


create table stu(
	snum number(3) primary key,
	sname varchar2(15),
	standing number(1),
	major varchar2(3),
	gpa number(2,1),
	gender varchar2(1),
	zip number(5),
	status varchar2(15));

insert into stu values (101,'Andy',3,'IS',2.8,'M',91101,'Active');
insert into stu values (102,'Betty',4,'ACC',3.2,'F',91102,'Active');
insert into stu values (103,'Cindy',2,'IS',1.5,'F',91101,'Probation');
insert into stu values (104,'David',2,'FIN',3.3,'M',91104,'Active');
insert into stu values (105,'Ellen',1,'IS',1.8,'M',91102,'Probation');
insert into stu values (106,'Frank',3,'MKT',3.1,'F',91103,'Active');

create table customers(
	custNum number(3) primary key,
	custName varchar2(10),
	gender varchar2(2),
	prime varchar2(2));

create table amazon(
	ordNum number(4) primary key,
	ordDate date,
	custNum number(3),
	amount number(6,2),
	constraint fk_orders_custNum foreign key (custNum) references customers(custNum));

insert into customers values (101,'Andy','M','Y');
insert into customers values (102,'Betty','F','Y');
insert into customers values (103,'Cindy','F','N');
insert into customers values (104,'David','M','N');
insert into customers values (105,'Ellen','F','Y');
insert into customers values (106,'Frank','M','Y');
insert into customers values (107,'George','M','Y');

insert into amazon values (1001,to_date('8/1/2015','mm/dd/yyyy'),101,400);
insert into amazon values (1002,to_date('8/15/2015','mm/dd/yyyy'),102,1500);
insert into amazon values (1003,to_date('12/3/2015','mm/dd/yyyy'),103,800);
insert into amazon values (1004,to_date('2/6/2016','mm/dd/yyyy'),101,300);
insert into amazon values (1005,to_date('3/7/2016','mm/dd/yyyy'),103,200);
insert into amazon values (1006,to_date('8/24/2016','mm/dd/yyyy'),104,1100);
insert into amazon values (1007,to_date('1/5/2017','mm/dd/yyyy'),101,1400);
insert into amazon values (1008,to_date('5/3/2017','mm/dd/yyyy'),101,50);
insert into amazon values (1009,to_date('8/8/2017','mm/dd/yyyy'),103,89);