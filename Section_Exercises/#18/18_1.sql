set echo off
set feedback on
set verify on
set heading on

/* start C:\Users\evana\Desktop\IS480\section_exercises\#18\18_1.sql */

/* #1 Display the Order number, Cnum, Pnum with the largest order amount */
select onum,cnum,pnum
	from orders
	where amount in (select max(amount) from orders);

/* #2 Display the customer (cnum,cname) who placed the order of the largest amount */
select customers.cnum,cname 
	from customers,orders 
	where customers.cnum = orders.cnum
	and amount = (select max(amount) from orders);

/* #3 Among all orders that are still open "O" display the (onum, cnum, pnum) with the largest order amount */
select cnum,pnum
	from orders 
	where amount in (select max(amount) from orders where status = 'O');

/* #4 Display orders where the amount is higher than the average */
select onum 
	from orders
	where amount >= (select avg(amount)from orders);

/* #5 Display orders where the amount is lower than average amount */
select onum 
	from orders 
	where amount <= (select avg(amount)from orders);

/* #6 Write an SQL statement to delete orders of the product is Discontinued */
delete 
	from orders 
	where onum in (select onum from orders,products where products.pnum = orders.pnum and products.status = 'Discontinue');

commit;

/* #7 Write a SQL statement to cancel orders (status X) for customers that are inactice */
update orders
	set status = 'X'
	where cnum in (select cnum from customers where status = 'Inactive');

/* #8 Write a SQL statement update the member to 'Gold' id he/she has spent over $1,500 */
select onum,sum(amount)
	from orders
	group by onum;