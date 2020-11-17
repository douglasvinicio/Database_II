-- Creation of tblEmployee
CREATE TABLE tblEmployee
(
EmployeeNumber INT NOT NULL,
EmployeeFirstName VARCHAR(40) NOT NULL,
EmployeeMiddleName VARCHAR(40) NULL,
EmployeeLastName VARCHAR(40) NOT NULL,
EmployeeGovernmentID CHAR(10) NULL,
DateOfBirth DATE NOT NULL
)

ALTER TABLE tblEmployee ADD department VARCHAR(15);

-- Shows table info and structure.
EXEC sp_columns tblEmployee;
EXEC sp_help tblEmployee;

-- Populating with some data
INSERT INTO tblEmployee VALUES 
(
    132,
    'Dylan',
    'A',
    'Word',
    'WN546652K',
    '19940914',
    'Litigation'
)

SELECT * FROM tblEmployee;

ALTER TABLE tblEmployee ALTER COLUMN department VARCHAR(30);