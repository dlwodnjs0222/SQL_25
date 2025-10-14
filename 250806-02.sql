use sakila;

select * from  customer where first_name like 'A__';

select * from  customer where first_name like '__A';

select * from  customer where first_name like 'A__A';

select * from  customer where first_name like '_____';

select * from  customer where first_name like 'A_R%';

select * from  customer where first_name like '__R%';

select * from  customer where first_name regexp '^K|N$';

select * from  customer where first_name regexp 'K[L-N]';

select * from  customer where first_name regexp 'K[^L-N]';