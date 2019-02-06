set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#12\tables.sql */

create table stu(
	ssn number(9) primary key,
	lastname varchar2(15),
	username varchar2(25));

insert into stu(ssn,lastname) values (737566386,'SMITH ');
insert into stu(ssn,lastname) values (266194501,'JONES');
insert into stu(ssn,lastname) values (463779935,'BROWN ');
insert into stu(ssn,lastname) values (396243689,'JOHNSON');
insert into stu(ssn,lastname) values (756351711,'WILLIAMS ');
insert into stu(ssn,lastname) values (106904076,'MILLER ');
insert into stu(ssn,lastname) values (522197408,'TAYLOR');
insert into stu(ssn,lastname) values (752774808,'WILSON ');
insert into stu(ssn,lastname) values (334974136,'DAVIS');
insert into stu(ssn,lastname) values (453899341,'WHITE ');
insert into stu(ssn,lastname) values (685201342,'CLARK');
insert into stu(ssn,lastname) values (286684377,'HALL ');
insert into stu(ssn,lastname) values (507704074,'THOMAS');
insert into stu(ssn,lastname) values (200671963,'THOMPSON');
insert into stu(ssn,lastname) values (401146823,'Allen');


