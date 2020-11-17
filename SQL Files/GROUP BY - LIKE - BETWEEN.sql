-- <> means different / Not equal to 
SELECT * FROM tblEmployee WHERE EmployeeLastName <> 'Word'; 

-- LIKE 
SELECT * FROM tblEmployee WHERE EmployeeLastName LIKE 'w%';
-- _ Remove first letter from the query 
SELECT * FROM tblEmployee WHERE EmployeeLastName LIKE '_w%';
-- OR __ Remove two first letters from the query
SELECT * FROM tblEmployee WHERE EmployeeLastName LIKE '__w%';
-- LIKE using Range of letters
SELECT * FROM tblEmployee WHERE EmployeeLastName LIKE '[a-c]%' ORDER BY EmployeeLastName;

-- Less and Bigger Then using operators 
-- AND 
SELECT * FROM tblEmployee WHERE EmployeeNumber >= 200 AND EmployeeNumber <=210;
-- OR 
SELECT * FROM tblEmployee WHERE EmployeeNumber <= 200 OR EmployeeNumber <=1000;
-- BETWEEN and NOT BETWEEN
SELECT * FROM tblEmployee WHERE EmployeeNumber NOT BETWEEN 130 AND 500;

-- GROOUP BY and ORDER BY
SELECT YEAR(DateOfBirth) FROM tblEmployee;
SELECT YEAR(DateOfBirth) AS NumberBorn FROM tblEmployee GROUP BY YEAR(DateOfBirth);
SELECT YEAR(DateOfBirth) AS NumberBorn, COUNT(*) AS HowMany FROM tblEmployee GROUP BY YEAR(DateOfBirth);
SELECT YEAR(DateOfBirth) AS NumberBorn, COUNT(*) AS HowMany FROM tblEmployee GROUP BY YEAR(DateOfBirth) ORDER BY YEAR(DateOfBirth);

SELECT * FROM tblEmployee WHERE YEAR(DateOfBirth) = 1967;

SELECT * FROM tblEmployee WHERE 1=1; -- This is always TRUE ( 1 = 1)


DECLARE @myvar VARCHAR(10) = 'HELLO' 
SELECT SUBSTRING(@myvar,3,2)