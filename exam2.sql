use companydb;

-- 1 display all records
select * from Orderss;

-- 2 select specific column
SELECT Customer_Name, Product_Name, Sales, Profit
FROM Orderss;

-- 3 filter bt state
SELECT * FROM Orderss WHERE State_or_Province= 'California';

-- 4 Negative Profit Orders
SELECT * FROM Orderss WHERE Profit < 0;

-- 5 Discount Based Filtering
SELECT * FROM Orderss WHERE Discount > 0.20;

-- 6 Sort Data
SELECT * FROM Orderss ORDER BY Sales DESC;

-- 7 Top 10 Highest Sales Orders
SELECT * FROM Orderss ORDER BY Sales DESC LIMIT 10;

-- 8 Unique Customer Segments
SELECT DISTINCT Customer_Segment FROM Orderss;

-- 9 Sales Between 500 and 2000
SELECT * FROM Orderss WHERE Sales BETWEEN 500 AND 2000;

-- 10 Customer Names Starting with A
SELECT *
FROM Orderss WHERE Customer_Name LIKE 'A%';

-- 11 Total Sales
SELECT SUM(Sales) AS Total_Sales FROM Orderss;

-- 12 Average Profit
SELECT AVG(Profit) AS Average_Profit FROM Orderss;

-- 13 Maximum Sales
SELECT MAX(Sales) AS Highest_Sales FROM Orderss;

-- 14 Minimum Profit
SELECT MIN(Profit) AS Lowest_Profit FROM Orderss;

-- 15 Total Number of Orders
SELECT COUNT(*) AS Total_Orders FROM Orderss;

-- 16 Total Sales by Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM Orderss
GROUP BY Region;

-- 17 Total Profit by State
SET SQL_SAFE_UPDATES = 0;

SELECT State_or_Province,
SUM(Profit) AS Total_Profit
FROM Orderss
GROUP BY State_or_Province;

-- 18 Average Sales by Segment
SELECT Customer_Segment,
AVG(Sales) AS Avg_Sales
FROM Orders_Raw
GROUP BY Customer_Segment;

-- 19 Customer Count by Region
SELECT Region,
COUNT(DISTINCT Customer_Name) AS Customer_Count
FROM Orders_Raw
GROUP BY Region;

-- 20 Total Quantity Sold by Category
SELECT Product_Category,
SUM(Quantity_ordered_new) AS Total_Quantity
FROM Orders_Raw
GROUP BY Product_Category;

-- 21 SELECT Region,
SELECT Region,
SUM(Sales) AS Total_Sales
FROM Orders_Raw
GROUP BY Region
HAVING SUM(Sales) > 50000;

-- 22 SELECT Category,
SELECT Product_Category,
AVG(Profit) AS Average_Profit
FROM Orders_Raw
GROUP BY Product_Category
HAVING AVG(Profit) > 100;

-- 23 Total Orders Per Month
SELECT MONTH(Order_Date) AS Month_No,
COUNT(*) AS Total_Orders
FROM Orders_Raw
GROUP BY MONTH(Order_Date)
ORDER BY Month_No;

-- 24 Shipping Delay Analysis
describe Orders_Raw;

select 
	Order_ID,
    Order_Date,
    Ship_Date
from Orders_Raw
limit 5;

select
	Order_ID,
    Order_Date,
    Ship_Date,
    datediff(Ship_Date,Order_Date) As Shipping_Days
from Orders_Raw;


-- 25 Orders After June 1, 2015
SELECT *
FROM Orders_Raw
WHERE Order_Date > '2015-06-01';

-- 26 Returned Orders

SELECT *
FROM Orders_Raw 
INNER JOIN Orders 
ON Orders_Raw.Order_ID = Orders.Order_ID;

-- 27 Non-Returned Orders
SELECT
    o.Order_ID,
    o.Customer_Name,
    o.Product_Name
FROM Orderss o
LEFT JOIN Orders r
ON o.Order_ID = r.Order_ID
WHERE r.Order_ID IS NULL;

-- 28 Returned Orders by Region

SELECT
    o.Region,
    COUNT(*) AS Returned_Orders
FROM Orderss o
INNER JOIN Orders r
ON o.Order_ID = r.Order_ID
GROUP BY o.Region;

-- 29 Top 5 Customers by Total Sales
SELECT Customer_Name,
SUM(Sales) AS Total_Sales
FROM Orders_Raw
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- 30 Most Profitable Category
SELECT Product_Category,
SUM(Profit) AS Total_Profit
FROM Orders_Raw
GROUP BY Product_Category
ORDER BY Total_Profit DESC
LIMIT 1;