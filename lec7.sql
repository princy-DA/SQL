create database collegeDB;

use collegeDB;

select * from college_admission;

create table sales(
	serial_number int primary key auto_increment,
    customer varchar(50),
    region varchar(100),
    category varchar(100),
    product varchar(50),
    quantity int,
    sales varchar(50),
    sales_date date,
	total int,
    profit decimal(10,1)
);

select * from sales;

show variables like 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/06Sales_Data_Dashboard (2).csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(customer,region,category,product,quantity,sales,@sales_date,total,profit)
SET sales_date = STR_TO_DATE(@sales_date,'%d-%m-%Y');
