/* Write and execute the queries and t-sql statements that has been explained ion the videos titled "19. 
Joining three tables" and "20. Using Alias". 
Please submit  your final query and also add a screenshot of the results after you execute them. 

INSERT INTO tblDepartment VALUES 
('Litigation', 'Andrew'),
('Customer Relationship','Andrew'),
('Commercial','Bryan'),
('HR','Kitty'),
('Accounts','James');

*/


-- First Query  
SELECT * FROM tblDepartment LEFT JOIN tblEmployee
ON tblDepartment.Department = tblEmployee.Department 
LEFT JOIN tblTransaction
ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber;

-- Second Query
SELECT tblDepartment.Department FROM tblDepartment LEFT JOIN tblEmployee
ON tblDepartment.Department = tblEmployee.Department 
LEFT JOIN tblTransaction
ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber;

--Third Query 
SELECT tblDepartment.department,departmentHead, SUM(amount) AS SumOfAmount
FROM tblDepartment LEFT JOIN tblEmployee
ON tblDepartment.Department = tblEmployee.Department 
LEFT JOIN tblTransaction
ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblDepartment.Department,departmentHead
ORDER BY department;

DROP TABLE tblDepartment;

CREATE TABLE tblDepartment
(
    department VARCHAR(30),
    departmentHead VARCHAR(20)
)
-- Fourth Query ( Adding Values )

INSERT INTO tblDepartment VALUES 
('Litigation', 'Andrew'),
('Customer Relationship','Andrew'),
('Commercial','Bryan'),
('HR','Catherine'),
('Accounts','James');


-- First Query using Alias
SELECT d.department, d.departmentHead, SUM(amount) AS SumOfAmount FROM 
tblDepartment AS d
LEFT JOIN tblEmployee AS e
ON d.department = e.department
LEFT JOIN tblTransaction AS t 
ON e.EmployeeNumber = t.EmployeeNumber
GROUP BY d.department, d.departmentHead
ORDER BY d.departmentHead;
