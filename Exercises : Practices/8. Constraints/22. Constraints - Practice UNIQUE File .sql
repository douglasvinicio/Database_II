-- Constraints Practice

ALTER TABLE tblEmployee ADD CONSTRAINT unqGovernmentID 
UNIQUE (EmployeeGovernmentID);


SELECT EmployeeGovernmentID, COUNT(EmployeeGovernmentID) AS MyCount
FROM tblEmployee GROUP BY EmployeeGovernmentID
HAVING COUNT(EmployeeGovernmentID) > 1;

SELECT * FROM tblEmployee WHERE EmployeeGovernmentID = 'TX593671R';

BEGIN TRANSACTION 
    DELETE FROM tblEmployee
    WHERE EmployeeNumber = 2
COMMIT TRANSACTION;

ALTER TABLE tblTransaction 
ADD CONSTRAINT unqTransaction UNIQUE (amount, DateOfTransaction, EmployeeNumber);

DELETE FROM tblTransaction WHERE EmployeeNumber = 131;

INSERT INTO tblTransaction
VALUES (1, '2015-01-01', 131), (1,'2015-01-01',131);

ALTER TABLE tblTransaction 
DROP CONSTRAINT unqTransaction;