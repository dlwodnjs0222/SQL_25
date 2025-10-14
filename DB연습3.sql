use sakila;

create table doit_cross1(num int);
create table doit_cross2(name varchar(10));

insert into doit_cross1 value (1), (2), (3);
insert into doit_cross2 value ('Do'), ('It'), ('SQL');

select * from doit_cross1;
select * from doit_cross2;

SELECT 
    a.num, b.name
FROM doit_cross1 as a
	cross join doit_cross2 as b
order by a.num;

SELECT 
    a.num, b.name
FROM doit_cross1 as a
	cross join doit_cross2 as b
where a.num = 1;

select a.customer_id as a_cusromer_id, b.customer_id as b_customer_id
from customer as a
	inner join customer as b on a.customer_id = b.customer_id;
    
select a.payment_id, a.amount, b.payment_id, b.amount, b.amount - a.amount as prof_it_amount
from payment as a
	left outer join payment as b on a.payment_id = b.payment_id -1;

select * from customer
where customer_id = (select customer_id from customer where first_name = 'ROSA');

-- select * from customer
-- where customer_id = (select customer_id from customer where first_name in ('ROSA', 'ANA')); 안됨

select * from customer
where first_name in ('ROSA', 'ANA');

select * from customer
where customer_id in (select customer_id from customer where first_name in('ROSA', 'ANA'));

select a.film_id, a.title
from film as a
	inner join film_category as b on a.film_id = b.film_id
    inner join category as c on b.category_id = c.category_id
where c.name = 'Action';

select film_id, title
from film 
where film_id in( select a.film_id
	from film_category as a
    inner join category as b on a.category_id = b.category_id
	where b.name = 'Action');
    
select film_id, title
from film 
where film_id not in( select a.film_id
	from film_category as a
    inner join category as b on a.category_id = b.category_id
	where b.name = 'Action');
    
select * from customer
where customer_id = any(select customer_id from customer where first_name in ('ROSA', 'ANA'));

select * from customer
where customer_id < any(select customer_id from customer where first_name in ('ROSA', 'ANA'));

select * from customer
where customer_id > any(select customer_id from customer where first_name in ('ROSA', 'ANA'));

select * from customer
where exists(select customer_id from customer where first_name in ('ROSA', 'ANA'));

select * from customer
where exists(select customer_id from customer where first_name in ('KING'));

select * from customer
where not exists(select customer_id from customer where first_name in ('KING'));