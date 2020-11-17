-- PRIMARY KEY

-- 18
ALTER TABLE tblEmployee ADD CONSTRAINT PK_tblEmployee PRIMARY KEY (EmployeeNumber);

-- 19
SELECT EmployeeNumber, COUNT(EmployeeNumber) AS MyCount FROM tblEmployee
GROUP BY EmployeeNumber
HAVING COUNT(EmployeeNumber) > 1;

-- 20
DELETE TOP(1) FROM tblEmployee WHERE EmployeeNumber = 132;

-- 21 ( Re-running the PK)
ALTER TABLE tblEmployee ADD CONSTRAINT PK_tblEmployee PRIMARY KEY (EmployeeNumber);

--  22
INSERT INTO tblEmployee
(
    EmployeeNumber, 
    EmployeeFirstName, 
    EmployeeMiddleName,
    EmployeeLastName,
    EmployeeGovernmentID,
    DateOfBirth,
    department)
VALUES(
    2004, 
    'FirstName', 
    'MiddleName',
    'LastName',
    'AB12345FI',
    '2014-01-01',
    'Accounts')

SELECT * FROM tblEmployee WHERE EmployeeNumber = 2004;

DELETE FROM tblEmployee WHERE EmployeeNumber = 2004;
