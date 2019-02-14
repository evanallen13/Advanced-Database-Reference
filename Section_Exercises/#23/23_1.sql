set echo off
set feedback off
set verify off
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#23\23_1.sql */

/* Display items where the combo is cheaper than buying the combo */
select items.i, unitprice, temp.separate
	from (select itemDetails.i,sum(items.unitprice) as separate
			from itemDetails, items 
			where items.i = itemDetails.include
			group by itemDetails.i) temp, items
	where temp.separate < unitprice
	and items.i = temp.i;