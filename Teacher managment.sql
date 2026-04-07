create database Teacher;
use Teacher;
CREATE TABLE teachers (
    teacher_id int PRIMARY KEY,
    name varchar(100),
    subject VARCHAR(50),
    salary int,
    experience int,
    department varchar(50)
);

INSERT INTO teachers VALUES (101, 'Shadab Ahmed', 'Math', 50000, 5, 'Science');
INSERT INTO teachers VALUES (102, 'Saihan Chelkar', 'English', 45000, 3, 'Arts');
INSERT INTO teachers VALUES (103, 'Affan Khan', 'Physics', 55000, 7, 'Science');
INSERT INTO teachers VALUES (104, 'Ashraf Shaikh', 'Biology', 48000, 4, 'Science');
INSERT INTO teachers VALUES (105, 'Zishan Choghule', 'History', 40000, 2, 'Arts');

SELECT * FROM teachers;

SELECT name, salary 
FROM teachers
WHERE salary > 45000;

UPDATE teachers
SET salary = salary + 5000
WHERE teacher_id = 102;

DELETE FROM teachers
WHERE teacher_id = 105;

SELECT name, salary
FROM teachers
WHERE salary = (SELECT MAX(salary) FROM teachers);

SELECT department, COUNT(*) AS total_teachers
FROM teachers
GROUP BY department;

SELECT name, experience
FROM teachers
ORDER BY experience DESC;


ALTER TABLE teachers ADD bonus int;

SET SQL_SAFE_UPDATES = 1;
UPDATE teachers
SET bonus = salary * 0.10;


CREATE VIEW high_salary_teachers AS
SELECT name, salary
FROM teachers
WHERE salary > 50000;


select name,salary
from teachers
order by SALARY DESC
limit 3;

update teachers
set bonus = bonus + 5000
where department = "Physics";

select name,salary
from teachers
where salary > (select avg(salary)from teachers);

select department,max(salary)
from teachers
group by department; 

select name,salary
from teachers
order by salary desc
limit 1 offset 2;

select * from teachers;

update teachers
set bonus = bonus + 4000
where teacher_id =102;