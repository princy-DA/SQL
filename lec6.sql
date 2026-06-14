CREATE DATABASE analytics_demodb;

use analytics_demodb;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  city VARCHAR(50)
);

INSERT INTO customers (name, city) VALUES
('Rohan', 'Mumbai'),
('Priya', 'Delhi'),
('Karan', 'Pune'),
('Neha', 'Chennai');

select * from customers;

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  product VARCHAR(50),
  amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) on delete cascade
);

drop table orders;
INSERT INTO orders (customer_id, product, amount) VALUES
(1, 'Laptop', 50000),
(3, 'Mobile', 20000),
(1, 'Mouse', 1500),
(4, 'Headphones', 3000);

select * from customers;
select * from orders;


SELECT customers.customer_id, customers.name, orders.order_id, orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;


SELECT customers.name, orders.order_id, orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;


SELECT customers.name, orders.order_id, orders.amount
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;


SELECT customers.name, orders.order_id, orders.amount
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
UNION
SELECT customers.name, orders.order_id, orders.amount
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

create table products(
	product_id int primary key auto_increment,
    product varchar(50),
    amount decimal(10,2)
    );
    
    insert into products(product,amount) values
    ('Laptop',50000),
    ('Headphone',3000),
    ('Mobile',20000),
    ('Mouse',1500);
    
    alter table orders add column product_id int;
    
    update orders set product_id=1 where order_id=1;
    
    update orders set product_id=2 where order_id=2;
    
    update orders set product_id=3 where order_id=3;
    
    update orders set product_id=4 where order_id=4;
    
    select * from orders;
    
SELECT customers.name, orders.order_id, products.product, orders.amount
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN products ON orders.product_id = products.product_id;

