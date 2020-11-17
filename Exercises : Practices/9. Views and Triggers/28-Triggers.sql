/* 
    Triggers
*/

-- 8 (CREATE TRIGGER)
CREATE TRIGGER TR_tblTransaction 
    ON tblTransaction
    AFTER DELETE,INSERT,UPDATE
    AS
    BEGIN
        SELECT *, 'Inserted' FROM Inserted
        SELECT *, 'Deleted' FROM Deleted
    END

-- 9 (INSERT)
BEGIN TRAN
    INSERT INTO tblTransaction(amount,DateOfTransaction,EmployeeNumber)
    VALUES (123,'2015-07-10',123)
    DELETE tblTransaction
    WHERE EmployeeNumber = 123 AND DateOfTransaction = '2015-07-10'
    ROLLBACK TRAN
GO