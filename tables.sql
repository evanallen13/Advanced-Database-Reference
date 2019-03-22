set echo off
set feedback off
set verify off
set heading off
/* start C:\Users\evana\Desktop\IS480\tables.sql */

drop table enrollments;
drop table SchClasses;
drop table courses;
drop table students;

create table students(
	snum number(3) primary key,
	sname varchar2(15),
	standing number(1),
	major varchar2(4),
	gpa number(1,2),
	major_gpa number(1,2));

create table Courses(
	dept varchar2(4),
	cnum number(4),
	ctitle varchar2(45),
	crhr number(1),
	standing number(1),
	primary key (dept, cnum));

create table SchClasses(
	callNum number(5) primary key,
	year number(4),
	semester varchar2(2),
	dept varchar2(4),
	cnum number(3),
	section number(1),
	day varchar2(4),
	time varchar2(5),
	room number(3),
	instructor varchar2(15),
	capacity number(2),
	constraint fk_schclasses foreign key (dept,cnum) references courses(dept,cnum));

create table enrollments(
	snum number(3),
	callnum number(5),
	grade varchar2(1),
	primary key (snum, callnum),
	constraint fk_enrollments_snum foreign key (snum) references students(snum),
	constraint fk_enrollments_callnum foreign key (callnum) references SchClasses(callnum));

insert into students(snum,sname,major) values ('101','Dylan','MKT');
insert into students(snum,sname,major) values ('102','Elijah','IS');
insert into students(snum,sname,major) values ('103','Henry','ACCT');
insert into students(snum,sname,major) values ('104','Sophia','ACCT');
insert into students(snum,sname,major) values ('105','Ethan','ACCT');
insert into students(snum,sname,major) values ('106','Liam','IS');
insert into students(snum,sname,major) values ('107','Alexander','ACCT');
insert into students(snum,sname,major) values ('108','Elijah','MKT');
insert into students(snum,sname,major) values ('109','Logan','IS');
insert into students(snum,sname,major) values ('110','Wyatt','ACCT');
insert into students(snum,sname,major) values ('111','John','MKT');
insert into students(snum,sname,major) values ('112','Logan','ACCT');
insert into students(snum,sname,major) values ('113','Jayden','IS');
insert into students(snum,sname,major) values ('114','Wyatt','IS');
insert into students(snum,sname,major) values ('115','Abigail','IS');
insert into students(snum,sname,major) values ('116','Dylan','MKT');
insert into students(snum,sname,major) values ('117','Henry','IS');
insert into students(snum,sname,major) values ('118','Noah','IS');
insert into students(snum,sname,major) values ('119','Joseph','IS');
insert into students(snum,sname,major) values ('120','Alexander','ACCT');

insert into courses values ('IS',210,'Excel',3,2);
insert into courses values ('IS',300,'Intro to MIS',3,3);
insert into courses values ('IS',310,'Statistics',3,3);
insert into courses values ('IS',380,'Database',4,3);
insert into courses values ('IS',455,'Web Development ',4,4);
insert into courses values ('IS',480,'Advanced Database',3,4);
insert into courses values ('MKT',210,'Intro to Marketing',3,2);
insert into courses values ('MKT',300,'Principles of Marketin',3,3);
insert into courses values ('MKT',310,'Retail Concepts and Polices',3,3);
insert into courses values ('MKT',330,'Advertising and Promotion',3,3);
insert into courses values ('MKT',350,'Introduction of Entrepreneurial',3,3);
insert into courses values ('MKT',450,'Advanced Entrepreneurial Marketin',3,4);
insert into courses values ('ACCT',201,'Elementary Financial Accounting',3,2);
insert into courses values ('ACCT',202,'Managerial Accounting ',3,2);
insert into courses values ('ACCT',300,'Intermediate Accounting ',3,3);
insert into courses values ('ACCT',470,'Auditing ',3,4);
insert into courses values ('CBA',300,'International Business',3,3);
insert into courses values ('CBA',400,'Business Ethics',4,4);
insert into courses values ('CBA',401,'Ethical Leadership',3,4);
insert into courses values ('CBA',485,'International Collegiate Business Strategy',3,4);
insert into courses values ('CBA',493,'Business Internship',3,4);
insert into courses values ('CBA',494,'Short-Term Study Abroad',4,4);
insert into courses values ('CBA',495,'Selected Topics in Business Administration',3,4);
insert into courses values ('Math',101,'Busines Calculas',3,1);
insert into courses values ('Math',102,'Statistic',3,4);
insert into courses values ('Math',201,'Advanced Busines Calculas',4,2);
insert into courses values ('Math',210,'Algebra',4,4);

insert into schclasses values (10110,2013,'Fa','IS',380,1,'MW','10:45',190,'Skywalker',32);
insert into schclasses values (10115,2013,'Fa','ACCT',201,2,'TTH','11:45',150,'smith',33);
insert into schclasses values (10120,2013,'Fa','IS',380,2,'MW','9:15',120,'Skywalker',31);
insert into schclasses values (10125,2013,'Fa','MKT',310,3,'MW','11:45',110,'TBA',37);
insert into schclasses values (10130,2013,'Fa','MKT',350,2,'TH','12:30',180,'smith',37);
insert into schclasses values (10135,2013,'Fa','Math',102,1,'MW','12:00',170,'TBA',39);
insert into schclasses values (10140,2013,'Fa','CBA',495,2,'TTH','11:00',200,'smith',26);
insert into schclasses values (10145,2013,'Fa','Math',210,2,'MW','11:00',130,'Skywalker',27);
insert into schclasses values (10150,2013,'Fa','IS',210,3,'TTH','10:00',200,'lee',32);
insert into schclasses values (10155,2013,'Fa','Math',210,2,'TH','11:30',110,'Solo',33);
insert into schclasses values (10160,2013,'Sp','IS',380,2,'TH','9:15',200,'lee',34);
insert into schclasses values (10165,2013,'Sp','IS',210,3,'MW','12:45',110,'Solo',27);
insert into schclasses values (10170,2013,'Sp','MKT',330,2,'MW','12:15',110,'smith',31);
insert into schclasses values (10175,2013,'Sp','MKT',450,1,'MW','10:30',140,'Fett',35);
insert into schclasses values (10180,2013,'Sp','CBA',485,3,'MW','10:15',110,'lee',27);
insert into schclasses values (10185,2013,'Sp','Math',102,2,'TTH','9:45',180,'Skywalker',26);
insert into schclasses values (10190,2013,'Sp','Math',210,3,'MW','10:45',140,'lee',26);
insert into schclasses values (10195,2013,'Sp','IS',300,2,'MW','10:00',190,'Skywalker',34);
insert into schclasses values (10200,2013,'Sp','CBA',495,3,'MW','10:15',100,'jones',33);
insert into schclasses values (10205,2013,'Sp','Math',102,1,'MW','11:15',100,'Fett',26);
insert into schclasses values (10210,2014,'Fa','CBA',493,2,'TH','11:15',150,'Solo',30);
insert into schclasses values (10215,2014,'Fa','Math',210,2,'MW','10:45',110,'Solo',31);
insert into schclasses values (10220,2014,'Fa','ACCT',470,3,'MW','10:00',130,'Solo',38);
insert into schclasses values (10225,2014,'Fa','MKT',310,1,'TH','10:00',120,'jones',37);
insert into schclasses values (10230,2014,'Fa','Math',101,2,'TTH','9:15',170,'lee',28);
insert into schclasses values (10235,2014,'Fa','MKT',350,3,'TTH','10:45',150,'Skywalker',31);
insert into schclasses values (10240,2014,'Fa','IS',480,2,'MW','10:00',170,'TBA',35);
insert into schclasses values (10245,2014,'Fa','CBA',400,2,'MW','9:00',130,'jones',29);
insert into schclasses values (10250,2014,'Fa','Math',210,2,'MW','12:45',150,'Fett',40);
insert into schclasses values (10255,2014,'Fa','IS',380,1,'TTH','9:15',150,'TBA',3);
insert into schclasses values (10260,2014,'Sp','CBA',494,2,'TTH','12:30',190,'lee',29);
insert into schclasses values (10265,2014,'Sp','MKT',210,1,'TTH','11:45',110,'smith',26);
insert into schclasses values (10270,2014,'Sp','ACCT',202,2,'MW','9:30',190,'Fett',37);
insert into schclasses values (10275,2014,'Sp','CBA',401,1,'TTH','12:15',120,'TBA',37);
insert into schclasses values (10280,2014,'Sp','MKT',350,3,'MW','10:00',140,'Fett',32);
insert into schclasses values (10285,2014,'Sp','Math',210,2,'TTH','11:45',110,'Fett',38);
insert into schclasses values (10290,2014,'Sp','CBA',494,3,'MW','11:15',130,'Skywalker',34);
insert into schclasses values (10295,2014,'Sp','CBA',401,1,'TH','9:15',200,'Fett',32);
insert into schclasses values (10300,2014,'Sp','CBA',300,3,'MW','9:00',190,'smith',28);


insert into enrollments values (103,10255,'B');
insert into enrollments values (104,10205,'C');
insert into enrollments values (101,10200,'F');
insert into enrollments values (113,10135,'A');
insert into enrollments values (107,10130,'D');
insert into enrollments values (104,10120,'F');
insert into enrollments values (106,10255,'D');
insert into enrollments values (117,10225,'C');
insert into enrollments values (114,10235,'D');
insert into enrollments values (105,10205,'F');
insert into enrollments values (101,10135,'B');
insert into enrollments values (118,10165,'B');
insert into enrollments values (101,10220,'B');
insert into enrollments values (118,10150,'A');
insert into enrollments values (102,10170,'C');
insert into enrollments values (103,10250,'B');
insert into enrollments values (104,10110,'A');
insert into enrollments values (114,10265,'C');
insert into enrollments values (103,10270,'D');
insert into enrollments values (106,10285,'C');
insert into enrollments values (106,10220,'A');
insert into enrollments values (111,10280,'B');
insert into enrollments values (113,10230,'D');
insert into enrollments values (112,10195,'A');
insert into enrollments values (116,10205,'A');
insert into enrollments values (119,10250,'D');
insert into enrollments values (109,10135,'A');
insert into enrollments values (114,10165,'D');
insert into enrollments values (102,10275,'D');
insert into enrollments values (101,10185,'F');
insert into enrollments values (117,10170,'A');
insert into enrollments values (107,10225,'C');
insert into enrollments values (114,10180,'C');
insert into enrollments values (101,10255,'C');
insert into enrollments values (103,10140,'F');
insert into enrollments values (111,10180,'A');
insert into enrollments values (107,10250,'C');
insert into enrollments values (106,10165,'C');
insert into enrollments values (118,10260,'D');
insert into enrollments values (111,10130,'B');
insert into enrollments values (102,10250,'F');
insert into enrollments values (115,10185,'B');
insert into enrollments values (117,10185,'D');
insert into enrollments values (112,10170,'D');
insert into enrollments values (112,10205,'D');
insert into enrollments values (109,10240,'D');
insert into enrollments values (115,10290,'F');
insert into enrollments values (107,10220,'C');
insert into enrollments values (104,10195,'A');
insert into enrollments values (113,10155,'B');
insert into enrollments values (118,10250,'A');
insert into enrollments values (101,10270,'C');
insert into enrollments values (116,10215,'C');
insert into enrollments values (109,10110,'D');
insert into enrollments values (110,10245,'C');
insert into enrollments values (103,10170,'C');
insert into enrollments values (110,10285,'C');
insert into enrollments values (112,10120,'C');
insert into enrollments values (104,10150,'C');
insert into enrollments values (111,10230,'F');
insert into enrollments values (118,10195,'D');
insert into enrollments values (106,10150,'D');
insert into enrollments values (111,10260,'A');
insert into enrollments values (116,10125,'B');
insert into enrollments values (110,10190,'F');
insert into enrollments values (113,10110,'C');
insert into enrollments values (109,10255,'B');
insert into enrollments values (114,10220,'D');
insert into enrollments values (118,10220,'A');
insert into enrollments values (117,10200,'A');
insert into enrollments values (105,10240,'F');
insert into enrollments values (120,10245,'A');
insert into enrollments values (101,10150,'B');
insert into enrollments values (117,10190,'A');
insert into enrollments values (102,10295,'F');
insert into enrollments values (110,10210,'A');
insert into enrollments values (115,10245,'C');
insert into enrollments values (109,10145,'F');
insert into enrollments values (102,10150,'B');
insert into enrollments values (115,10250,'C');
insert into enrollments values (104,10130,'B');
insert into enrollments values (107,10175,'D');
insert into enrollments values (120,10230,'D');
insert into enrollments values (106,10125,'A');
insert into enrollments values (110,10205,'B');
insert into enrollments values (113,10140,'C');