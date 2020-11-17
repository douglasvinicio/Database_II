SELECT EmployeeNumber,SUM(Amount) 
FROM tblTransaction 
GROUP BY EmployeeNumber

-- SELECT Everthing from two tables
SELECT *
FROM tblEmployee 
JOIN tblTransaction
ON tblTransaction.EmployeeNumber = tblEmployee.EmployeeNumber

-- AMOUT COUNTER Using JOIN two tables
SELECT tblEmployee.EmployeeNumber,EmployeeFirstName,EmployeeLastName,SUM(Amount) AS SumOfAmount
FROM tblEmployee 
JOIN tblTransaction
ON tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
GROUP BY tblEmployee.EmployeeNumber,EmployeeFirstName,EmployeeLastName
ORDER BY EmployeeNumber

SELECT * FROM tblTransaction WHERE EmployeeNumber = 1046