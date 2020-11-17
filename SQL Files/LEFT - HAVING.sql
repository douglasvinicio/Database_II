-- LEFT Function - Calculating how many names start with each letter
SELECT LEFT(EmployeeLastName, 1) AS InitalLetter, COUNT(*) AS Counter FROM tblEmployee WHERE 1=1 
GROUP BY LEFT(EmployeeLastName,1) 
ORDER BY COUNT(*) DESC;

-- SELECTING only TOP 5 - SAME AS LIMIT
SELECT TOP(10) LEFT(EmployeeLastName, 1) AS InitalLetter, COUNT(*) AS Counter FROM tblEmployee WHERE DateOfBirth > '19860101'
GROUP BY LEFT(EmployeeLastName,1) 
ORDER BY COUNT(*) DESC;

-- HAVING
SELECT TOP(10) LEFT(EmployeeLastName, 1) AS InitalLetter, COUNT(*) AS Counter FROM tblEmployee WHERE DateOfBirth > '19860101'
GROUP BY LEFT(EmployeeLastName,1) 
HAVING COUNT(*) >= 20  -- HAVING
ORDER BY LEFT(EmployeeLastName,1)  DESC;

