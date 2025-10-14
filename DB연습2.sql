use sakila;

select * from customer;

select * from address;

select * from city;

select a.customer_id, a.store_id, a.first_name, a.last_name, a.email, a.address_id as 
		a_address_id, b.address_id as
		b_address_id, b.address, b.district, b.city_id, b.postal_code, b.phone, b.location 
from customer as a 
	inner join address as 
    b on a.address_id = b.address_id
where a.first_name = 'ROSA';

select a.customer_id, a.first_name, a.last_name,
		b.address_id, b.address, b.district, b.postal_code
from customer as 
	a inner join address as 
	b on a.address_id = b.address_id 
    and a.create_date = b.last_update
where a.first_name = 'ROSA';

select
	a.customer_id, a.first_name, a.last_name,
    b.address_id, b.address, b.district, b.postal_code,
    c.city_id, c.city
from customer as a 
	inner join address as b on a.address_id = b.address_id
	inner join city as c on b.city_id = c.city_id
where a.first_name = 'ROSA';

select
	a.address, a.address_id as a_address_id,
    b.address_id as b_address_id, b.store_id
from address as a
	left outer join store as b on a.address_id = b.address_id;
    
select
	a.address, a.address_id as a_address_id,
    b.address_id as b_address_id, b.store_id
from address as a
	right outer join store as b on a.address_id = b.address_id;

-- select
-- 	a.address_id as a_address_id, a.store_id,
--     b.address, b.address_id as b_address_id
-- from store as a
-- 	right outer join address as b on a.address_id = b.address_id
-- where a.address_id is null;