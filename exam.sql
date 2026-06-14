create database companydb;

use companydb;

create table superstore(
	serial_number int primary key auto_increment,
    Customer_name varchar(100),
    Customer_ID int,
    Row_ID int,
    lenghth int,
    Order_Priority varchar(100),
    Discount decimal(3,2),
    Unit_Price int,
    Shipping_cost decimal(10,2),
    Ship_mode varchar(100),
    Customer_Segment varchar(100),
    Product_Category varchar(100),
    Product_Sub-Category varchar(100),
    Product_Container varchar(100),
    Product_Name varchar(100),
    Product_Base_Margin decimal(3,2),
    Country varchar(50),
    Region varchar(50),
    State_or_Province varchar(50),
    City varchar(50),
    Postal_Code int,
    Order_Date date,
    Ship_Date date,
    Profit decimal(3,2),
    Quantity_ordered_new int,
    Sales decimal(3,2),
    Order_ID int,
    status varchar(50);