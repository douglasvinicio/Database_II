/*
    Stored Procedures
*/

-- 1 (Creating Procedure)
CREATE PROC NameEmployee AS
BEGIN
SELECT EmployeeNumber,EmployeeFirstName, EmployeeLastName
FROM tblEmployee
END

-- 2 (EXEC or EXECUTE)
EXEC NameEmployee;
EXECUTE NameEmployee;
NameEmployee;
GO
-- 3 (DROPPING PROCEDURE)
DROP PROC NameEmployee;
GO

-- 4 ( Show Procedures )
SELECT * FROM sys.procedures WHERE name = 'NameEmployee'

-- 5 ( Dropping Procedure IF EXISTS )
IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'NameEmployee') DROP PROC NameEmployee;

-- 6 (Droppping Using OBJECT_ID)
IF OBJECT_ID('NameEmployee','P') IS NOT NULL DROP PROC NameEmployee;
GO
-- 7 (Specific Row)
CREATE PROC NameEmployee(@EmployeeNumber INT) AS
BEGIN
SELECT EmployeeNumber,EmployeeFirstName, EmployeeLastName
FROM tblEmployee
WHERE EmployeeNumber = @EmployeeNumber
END
GO
EXECUTE NameEmployee 222;
GO
EXEC NameEmployee 123;
GO
NameEmployee 360;

-- 8 (Checking If Exists)
IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'NameEmployee2') DROP PROC NameEmployee2;
GO
CREATE PROC NameEmployee2(@EmployeeNumber INT) AS
BEGIN
    IF EXISTS (SELECT * FROM tblEmployee WHERE EmployeeNumber = @EmployeeNumber)
        BEGIN
            SELECT EmployeeNumber,EmployeeFirstName, EmployeeLastName
            FROM tblEmployee
            WHERE EmployeeNumber = @EmployeeNumber
        END
    END
GO
EXECUTE NameEmployee2 4; -- NULL 
GO
EXEC NameEmployee2 123;
GO
NameEmployee2 360;
GO

-- 9 (RANGE / BETWEEN)
IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'NameEmployee3') DROP PROC NameEmployee3;
GO
CREATE PROC NameEmployee3(@EmployeeNumberFrom INT,@EmployeeNumberTo INT) AS
BEGIN
    IF EXISTS (SELECT * FROM tblEmployee WHERE EmployeeNumber BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo)
        BEGIN
            SELECT EmployeeNumber,EmployeeFirstName, EmployeeLastName
            FROM tblEmployee
            WHERE EmployeeNumber BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo
        END
    END
GO
EXECUTE NameEmployee3 4,6; -- NULL
GO


-- 10 (RANGE / BETWEEN)
IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'NameEmployee3') DROP PROC NameEmployee3;
GO
CREATE PROC NameEmployee3(@EmployeeNumberFrom INT,@EmployeeNumberTo INT) AS
BEGIN
    IF EXISTS (SELECT * FROM tblEmployee WHERE EmployeeNumber BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo)
        BEGIN
            SELECT EmployeeNumber,EmployeeFirstName, EmployeeLastName
            FROM tblEmployee
            WHERE EmployeeNumber BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo
        END
    END
GO
EXECUTE NameEmployee3 223,227; 
GO


-- 11 (Alternative Way to Query - More Organized )
EXEC NameEmployee3 @EmployeeNumberFrom = 333, @EmployeeNumberTo = 340;



