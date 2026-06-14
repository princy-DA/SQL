create database Teacher;

use Teacher;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(50)
);

insert into teachers values
(1,'Priya','AI'),
(2,'Tiya','Cyber security'),
(3,'Jiya','Data Anaytics'),
(4,'Diya','Data Engineer');

select * from teachers;

ALTER TABLE teachers ADD email VARCHAR(100);

ALTER TABLE teachers MODIFY subject VARCHAR(100);

ALTER TABLE teachers RENAME COLUMN subject TO subject_name;

ALTER TABLE teachers DROP COLUMN email;

RENAME TABLE teachers TO faculty;

CREATE TABLE faculty_salary (
    salary_id INT PRIMARY KEY,
    teacher_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (teacher_id) REFERENCES faculty(teacher_id) on delete cascade
);

select * from faculty_salary;

insert into faculty_salary values
(101,1,50000),
(102,2,53000);

DELETE FROM faculty_salary WHERE teacher_id = 1;
