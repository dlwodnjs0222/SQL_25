use todo_db;

create table products (
	id bigint auto_increment primary key,
    name varchar(100),
    price int
);

create table cart_items (
	id bigint auto_increment primary key,
    product_id bigint,
    quantity int
);

select * from products;

select * from cart_items;

insert into ptodostodosroducts(name, price) values ('키보드', 30000), ('마우스', 15000), ('모니터', 200000);

select  c.*, p.id as product_id, p.name, p.price from cart_items c join products p on c.product_id = p.id;