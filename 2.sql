CREATE TABLE IF NOT EXISTS Employee (Id int, Salary int);
TRUNCATE TABLE Employee;
INSERT INTO Employee (Id, Salary) VALUES ('1', '100');
INSERT INTO Employee (Id, Salary) VALUES ('2', '200');
INSERT INTO Employee (Id, Salary) VALUES ('3', '300');

select max(salary) AS secondHighestSalary
from employee
where salary < (select max(salary) from employee);

