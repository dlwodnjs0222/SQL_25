use sakila;

select * from customer;

select * from customer where first_name = 'MARIA';

select * from customer where first_name != 'MARIA';

select * from customer where address_id < 200;

select * from payment where payment_date < '2005-07-08';

select * from payment where payment_date between '2005-07-08 ' and '2005-07-10';

select * from payment where payment_date between '2005-07-09 13' and '2005-07-09 14';

select * from address;

select * from customer where first_name between 'M' and 'O';

select * from city where city = 'Sunnyvale' and country_id = 103;

select * from payment where payment_date between '2005-06-01' and '2005-07-05';

select * from customer where first_name in ('MARIA', 'LINDA', 'MANCY');

select * from city where country_id in (86, 103) and city in('Cheju', 'Sunnyvale', 'Dallas');

select * from address;

select * from address where address2 is null;

select * from address where address2 is not null;

select count(*) from address where address2 is not null;

select * from address where address2 = '';

select * from customer order by float_name;

select * from customer order by last_name;

select * from customer order by store_id, first_name;

select * from customer order by  first_name, store_id;

select * from customer order by customer_id limit 100, 10;

select * from customer order by customer_id limit 100 offset 10;

select * from customer order by customer_id limit 20, 10;

select * from customer where first_name like 'A%';

select * from customer where first_name like 'AA%';

select * from customer where first_name like '%A';

select * from customer where first_name like '%A%';

select * from customer where first_name like '_A%';

with CTE (col_1) as(
	select 'A%BC' union all
	select 'A_BC' union all
    select 'ABC'
    )
select * from CTE where col_1 like '%#%%' escape '#';

select '100' as num union all select '100';

with CTE (col_1, col_2) as(
	select '123', '456' union all
	select 'abc', 'def' union all
    select 'ABC', 'DEF'
    )
select * from CTE;

