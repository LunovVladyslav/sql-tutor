CREATE TABLE IF NOT EXISTS Employee(Id int, Name varchar(255), Salary int, ManagerId int);
TRUNCATE TABLE Employee;
INSERT INTO Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
INSERT INTO Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
INSERT INTO Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', null);
INSERT INTO Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', null);

SELECT e1.Name AS Employee
FROM Employee e1
JOIN Employee e2 ON e1.ManagerId = e2.Id
WHERE e1.Salary > e2.Salary;