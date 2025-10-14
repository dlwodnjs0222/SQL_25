select * from customer;

select  count(*) from actor;

select first_name, last_name from customer;

select * from actor;

select * from address where address_id = 5;

select * from store;

select * from staff where staff_id = 1;

desc customer;

show columns from sakila.customer;

select * from customer where first_name < 'MARIA';

select * from payment;

desc payment;

select * from rental where rental_id = 76;

select * from payment where payment_date < '2005-07-09';

select * from payment where payment_date between  '2005-07-01' and '2005-07-09';

select * from customer where address_id between 5 and 10;

select * from customer where address_id < 200;

select * from customer where first_name = 'MARIA';

select * from emp;

select * from dept;