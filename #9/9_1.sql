set echo on
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\#9\9_1.sql */

/* display students Female vs. Male */
select gender,count(*)
	from stu
	group by gender;