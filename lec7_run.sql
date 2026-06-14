select * from sales;

SELECT customer, product, sales, profit
FROM sales;

SELECT COUNT(*) AS total_records
FROM sales;

SELECT COUNT(DISTINCT customer) AS total_customers
FROM sales;

SELECT *
FROM sales
ORDER BY sales DESC;

SELECT *
FROM sales
ORDER BY profit ASC;

SELECT *
FROM sales
WHERE region = 'East';

SELECT *
FROM sales
WHERE quantity > 2;

SELECT *
FROM sales
WHERE profit > 100;

SELECT *
FROM sales
WHERE profit BETWEEN 50 AND 500;

SELECT *
FROM sales
WHERE category IN ('Clothing','Accessories');

SELECT *
FROM sales
WHERE customer LIKE 'A%';

SELECT *
FROM sales
WHERE product LIKE '%Headphones%';

SELECT SUM(sales) AS total_sales
FROM sales;

SELECT AVG(sales) AS avg_sales
FROM sales;

SELECT MAX(sales) AS highest_sale
FROM sales;

SELECT MIN(sales) AS lowest_sale
FROM sales;

SELECT SUM(profit) AS total_profit
FROM sales;

