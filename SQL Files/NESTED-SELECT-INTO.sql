-- DERIVED TABLE
-- Third Table - New method for create a table 
-- Showing how many departments
SELECT department, COUNT(*) AS NumberOfDepartments FROM tblEmployee GROUP BY department;

-- Number of departments 
-- INNER SELECT / NESTED SELECT
SELECT COUNT(department) As NumberOfDepartments FROM 
(SELECT department, COUNT(*) AS NumberOfDepartments FROM tblEmployee GROUP BY department) 
AS NewTable; -- Mandatory the use of ALIAS when using the INNER SELECT / SUBQUERY / NESTED SELECT

-- DISTINCT 
SELECT DISTINCT department FROM tblEmployee;
SELECT DISTINCT COUNT(department) FROM tblEmployee;

-- CREATE TABLE Using INTO 
SELECT DISTINCT department 
INTO tblDepartment -- It CREATES the TABLE
FROM tblEmployee;