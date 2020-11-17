/* 
    9. Views and Triggers 
*/

-- 1 (NORMAL QUERY)
SELECT d.Department, t.EmployeeNumber, t.DateOfTransaction, t.amount AS TotalAmount
FROM tblDepartment AS d 
LEFT JOIN tblEmployee AS e 
ON e.department = d.department
LEFT JOIN tblTransaction AS t 
ON t.EmployeeNumber = e.EmployeeNumber
WHERE t.EmployeeNumber BETWEEN 120 AND 139
ORDER BY d.department, t.EmployeeNumber
GO
-- 2 (CREATE VIEW)
CREATE VIEW ViewByDepartment AS 
SELECT d.Department, t.EmployeeNumber, t.DateOfTransaction, t.amount AS TotalAmount
FROM tblDepartment AS d 
LEFT JOIN tblEmployee AS e 
ON e.department = d.department
LEFT JOIN tblTransaction AS t 
ON t.EmployeeNumber = e.EmployeeNumber
WHERE t.EmployeeNumber BETWEEN 120 AND 139
ORDER BY d.department, t.EmployeeNumber
GO

-- 3 (TOP 100)
CREATE VIEW ViewByDepartment AS 
SELECT TOP(100) d.Department, t.EmployeeNumber, t.DateOfTransaction, t.amount AS TotalAmount
FROM tblDepartment AS d 
LEFT JOIN tblEmployee AS e 
ON e.department = d.department
LEFT JOIN tblTransaction AS t 
ON t.EmployeeNumber = e.EmployeeNumber
WHERE t.EmployeeNumber BETWEEN 120 AND 139
ORDER BY d.department, t.EmployeeNumber
GO

-- 4 (ORDER BY REMOVED)
CREATE VIEW ViewByDepartment2 AS 
SELECT d.Department, t.EmployeeNumber, t.DateOfTransaction, t.amount AS TotalAmount
FROM tblDepartment AS d 
LEFT JOIN tblEmployee AS e 
ON e.department = d.department
LEFT JOIN tblTransaction AS t 
ON t.EmployeeNumber = e.EmployeeNumber
WHERE t.EmployeeNumber BETWEEN 120 AND 139;
GO

-- 5 (SELECT VIEW)
SELECT * FROM ViewByDepartment;
GO
-- 6 ( SUMMARY VIEW)
CREATE VIEW ViewSummary AS 
SELECT d.department, t.EmployeeNumber AS EmpNum, SUM(t.amount) AS TotalAmount
FROM tblDepartment AS d
LEFT JOIN tblEmployee AS e
ON d.department = e.department
LEFT JOIN tblTransaction AS t 
ON t.EmployeeNumber = e.EmployeeNumber
GROUP BY d.department, t.EmployeeNumber;
GO

-- 7
SELECT * FROM ViewSummary