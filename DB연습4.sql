use sakila;

with ctr_customer(customer_id, first_name, email) as(
	select customer_id, first_name, email from customer where customer_id >= 10
    and customer_id <= 15
    union all
    select customer_id, first_name, email from customer where customer_id >= 25
    and customer_id <= 30
)

select * from ctr_customer;

select concat(first_name, ', ', last_name) as custamer_name from customer;

select concat_ws(', ' ,first_name, last_name, email) as custamer_name from customer;

select concat(null ,first_name,  last_name) as custamer_name from customer;

select 4/ cast('2' as signed);

select cast(now() as signed);

select cast(20250827 as date);

select cast(20250827 as char);

select cast(20250827 as char(5));

create table doit_null(
	col_1 int,
    col_2 varchar(10),
	col_3 varchar(10),
    col_4 varchar(10),
    col_5 varchar(10)
);

insert into doit_null values (1, null, 'col_3', 'col_4', 'col_5');
insert into doit_null values (2, null, 'col_3', 'col_4', 'col_5');
insert into doit_null values (2, null, null, null, 'col_5');
insert into doit_null values (3, null, null, null, null);

select * from doit_null;

select col_1, ifnull(col_2, '') as col_2, col_3, col_4, col_5
from doit_null where col_1 = 1;

select col_1, ifnull(col_2, col_3) as col_2, col_3, col_4, col_5
from doit_null where col_1 = 1;

select length('Do It! MySQL'), length('두잇 마이에스큐엘');

select length('A'), length('강'), length('◁'), length('李'), length(' ');

select current_date(), current_time(), current_timestamp(), now();

select customer_id, staff_id, sum(amount)
from payment
group by customer_id, staff_id with rollup;