-- TYPES OF JOIN
-- INNER JOIN - Default has to be in both tables
-- LEFT JOIN - All the rows in the left table
-- RIGHT JOIN - All the rows in the right table
-- X CROOS JOIN - Every single combination - rarely used and not recommended bacause of the load on the CPU


-- Using LEFT JOIN
SELECT tblEmployee.EmployeeNumber,EmployeeFirstName,EmployeeLastName,SUM(Amount) AS SumOfAmount
FROM tblEmployee 
LEFT JOIN tblTransaction
ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber,EmployeeFirstName,EmployeeLastName
ORDER BY EmployeeNumber