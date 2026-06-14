create database schooldb;

use schooldb;

create table students(
	StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    Marks DECIMAL(5,2)
);

insert into students values
(1,"Priya",20,"Data science",79),
(2,"Riya",19,"Data analysis",94),
(3,"Piya",21,"AI",91),
(4,"Tiya",23,"Data Engineer",89),
(5,"Jiya",22,"Cyber Security",72);

select * from students;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE,
    IsActive BOOLEAN
);

insert into Employees values
(101, 'Anjali Desai', 45000, '2024-01-15', TRUE),
(102, 'Rohit Kumar', 52000, '2023-07-10', TRUE),
(103, 'Neha Singh', 39000, '2022-11-20', FALSE);

SELECT * FROM Employees;