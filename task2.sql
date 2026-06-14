create database empdb;

use empdb;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees
VALUES
(1, 'Rohit', 'IT', 45000),
(2, 'Neha', 'HR', 60000),
(3, 'Arjun', 'IT', 70000),
(4, 'Simran', 'Finance', 55000),
(5, 'Rahul', 'HR', 40000),
(6,'Priya','IT',65000),
(7,'Jiya','HR',56000);

select * from employees;

SELECT *
FROM employees
WHERE department = 'IT';

SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM employees
WHERE salary >= 40000;

SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Finance';

SELECT *
FROM employees
WHERE NOT department = 'IT';

SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

SELECT *
FROM employees
WHERE department IN ('IT', 'HR');

SELECT *
FROM employees
WHERE emp_name LIKE 'R%';

SELECT *
FROM employees
WHERE emp_name LIKE '%n';

SELECT *
FROM employees
WHERE emp_name LIKE '%a%';

SELECT *
FROM employees
ORDER BY salary ASC;

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT DISTINCT department
FROM employees;

SELECT *
FROM employees
LIMIT 5;

SELECT emp_name AS Employee_Name
FROM employees;



CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mouse', 'Electronics', 700),
(3, 'Keyboard', 'Electronics', 1200),
(4, 'Chair', 'Furniture', 3500),
(5, 'Table', 'Furniture', 6000),
(6, 'Mobile', 'Electronics', 25000),
(7, 'Bottle', 'Accessories', 300),
(8, 'Bag', 'Accessories', 1500),
(9, 'Notebook', 'Stationery', 100),
(10, 'Pen', 'Stationery', 20);

select * from Products;

SELECT * 
FROM Products
WHERE Price > 1000;

SELECT * 
FROM Products
ORDER BY Price ASC;

SELECT * 
FROM Products
ORDER BY Price DESC;

SELECT *
FROM Products
WHERE Product_Name LIKE 'P%';

SELECT *
FROM Products
WHERE Product_Name LIKE '%a%';

select Product_ID from products;

SELECT *
FROM Products
WHERE Category = 'Electronics'
OR Category = 'Stationery';

SELECT *
FROM Products
WHERE Category = 'Electronics'
and  Product_Name= 'Laptop';

SELECT *
FROM Products
WHERE Price BETWEEN 12000 AND 60000;