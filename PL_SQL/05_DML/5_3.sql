set serveroutput on 
set echo on

/* start C:\Users\evana\Desktop\IS480\PL_SQL\05_dml\5_3.sql */

create or replace procedure AddMe(
	p_snum students.snum%type
	p_callnum schclasses.callnum%type)as

begin 
	