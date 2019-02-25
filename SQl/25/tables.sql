set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\sql\25\tables.sql */
drop table listings;

create table listings(
	listNum number(3) primary key,
	neighborhood varchar2(20),
	bedroom number(2),
	price number(8));

insert into listings values (1,'north',1,748);
insert into listings values (2,'riverview',1,970);
insert into listings values (3,'downtown',1,520);
insert into listings values (4,'north',1,924);
insert into listings values (5,'north',2,1370);
insert into listings values (6,'north',2,1452);
insert into listings values (7,'north',1,917);
insert into listings values (8,'downtown',2,1548);
insert into listings values (9,'riverview',3,2097);
insert into listings values (10,'riverview',3,1896);
insert into listings values (11,'downtown',3,2373);
insert into listings values (12,'north',3,2844);
insert into listings values (13,'north',2,1288);
insert into listings values (14,'north',3,2766);
insert into listings values (16,'downtown',3,1824);
insert into listings values (17,'riverview',3,1563);
insert into listings values (18,'riverview',1,571);
insert into listings values (19,'downtown',1,847);
insert into listings values (20,'downtown',1,822);
insert into listings values (21,'downtown',1,798);
insert into listings values (22,'north',3,2886);
insert into listings values (23,'north',3,2799);
insert into listings values (24,'north',2,1200);
insert into listings values (25,'riverview',3,2490);
insert into listings values (27,'north',3,1527);
insert into listings values (28,'north',2,1292);
insert into listings values (29,'downtown',2,1078);
