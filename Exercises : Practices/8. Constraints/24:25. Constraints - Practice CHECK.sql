-- CHECK CONSTRAINTS 

-- 9
ALTER TABLE tblTransaction ADD CONSTRAINT
chkAmount CHECK (amount > -1000 AND amount < 1000);

-- 10
INSERT INTO tblTransaction VALUES (1010, '2014-01-01', 1 );

-- 11
INSERT INTO tblTransaction VALUES (999, '2014-01-01', 1);

--12 
INSERT INTO tblTransaction VALUES (-1001, '2014-01-01', 1);

-- 13
ALTER TABLE tblEmployee
ADD CONSTRAINT chkMiddleName 
CHECK (REPLACE(EmployeeMiddleName, '.','') = EmployeeMiddleName OR EmployeeMiddleName IS NULL)

-- 14
ALTER TABLE tblEmployee WITH NOCHECK
ADD CONSTRAINT chkMiddleName 
CHECK (REPLACE(EmployeeMiddleName, '.','') = EmployeeMiddleName OR EmployeeMiddleName IS NULL)

-- 15
BEGIN TRAN 
    INSERT INTO tblEmployee
    VALUES (2003, 'A','B.','C','D','2014-01-01','Accounts') 
    SELECT * FROM tblEmployee WHERE EmployeeNumber = 2003
ROLLBACK TRAN

-- 16
BEGIN TRAN 
    INSERT INTO tblEmployee
    VALUES (2003, 'A','B','C','D','2014-01-01','Accounts') 
    SELECT * FROM tblEmployee WHERE EmployeeNumber = 2003
ROLLBACK TRAN

-- 17 
BEGIN TRAN 
    INSERT INTO tblEmployee
    VALUES (2003, 'A', NULL ,'C','D','2014-01-01','Accounts') 
    SELECT * FROM tblEmployee WHERE EmployeeNumber = 2003
ROLLBACK TRAN