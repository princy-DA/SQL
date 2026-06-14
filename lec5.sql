create database marks;

use marks;

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30)
);

insert into student values
(1,'Princy','Data Analytics'),
(2,'Hemal','Data Engineer'),
(3,'Manushree','AI'),
(4,'Dhyani','Cyber Security');

select * from student;

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES student(id)
);

ALTER TABLE student add email varchar(50);

ALTER TABLE student add marks int;

ALTER TABLE student MODIFY marks FLOAT;

alter table student rename column course to course_name;

update student set marks=50 where id=1;

update student set marks=70 where id=2;

update student set marks=90 where id=3;

update student set marks=60 where id=4;

ALTER TABLE student DROP COLUMN email;

RENAME TABLE student TO student_info;

select * from student_info;

drop table marks;

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES student_info(id)
);

ALTER TABLE student_info ADD email VARCHAR(100);

ALTER TABLE student_info MODIFY course_name VARCHAR(50);

ALTER TABLE student_info DROP COLUMN email;

INSERT INTO marks VALUES (101, 1, 85), (102, 2, 90);

DELETE FROM student_info WHERE id = 4;

-- Summary of student marks
SELECT 
  COUNT(*) AS total_students,
  SUM(marks) AS total_marks,
  AVG(marks) AS average_marks,
  MAX(marks) AS highest_marks,
  MIN(marks) AS lowest_marks
FROM student_info;
