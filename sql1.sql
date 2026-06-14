create database Employeedb;

use Employeedb;

create table employee(
	emp_id int,
    emp_name varchar(50),
    emp_age int,
    emp_salary int
);

insert into employee values
(1,"Priya",20,35000),
(2,"Diya",21,39000),
(3,"Tiya",22,41000);

select * from employee;