use analytics_demodb;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3,'Account'),
(4,'Marketing');

INSERT INTO employees VALUES
(101, 'Amit', 1),
(102, 'Priya', 2),
(103, 'Rahul', 2),
(104, 'Neha', 3);

select * from employees;
select * from departments;

SELECT employees.employee_name, departments.department_name
FROM employees 
INNER JOIN departments 
ON employees.department_id = departments.department_id;

SELECT departments.department_name, employees.employee_name
FROM departments 
LEFT JOIN employees 
ON departments.department_id = employees.department_id;

SELECT employees.employee_name, departments.department_name
FROM departments 
RIGHT JOIN employees 
ON departments.department_id = employees.department_id;

SELECT employees.employee_name, departments.department_name
FROM employees 
LEFT JOIN departments 
ON employees.department_id = departments.department_id
UNION
SELECT employees.employee_name, departments.department_name
FROM employees 
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id) on delete cascade
);

INSERT INTO projects VALUES
(1, 'Payroll System', 101),
(2, 'Website Development', 102),
(3, 'Mobile App', 103),
(4,'Web development',104);

SELECT employees.employee_name, departments.department_name, projects.project_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
INNER JOIN projects
ON employees.employee_id = projects.employee_id;

load data infile "C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\06Sales_Data_Dashboard (2).csv"
into table sales
fields terminated by '"'
lines terminated by '\n'
ignore 1 rows
(customer,region,category,product,quantity,sales,sales_date,total,profit);