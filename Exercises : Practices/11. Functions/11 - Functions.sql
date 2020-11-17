/* 
    Functions
*/ 

-- 1
-- Creating a Function 
CREATE FUNCTION AmountPlusOne
(
    @amount SMALLMONEY
)
RETURNS SMALLMONEY
AS
BEGIN
    RETURN @amount + 1
END
GO

SELECT DateOfTransaction, EmployeeNumber, Amount, 
dbo.AmountPlusOne(Amount) AS AmountPlusOne
FROM tblTransaction;



-- 2 (Calling the function / Alternative way)

DECLARE @myValue SMALLMONEY;
EXEC @myValue = dbo.AmountPlusOne 345.67;
SELECT @myValue;
GO
/*
    INLINE TABLE FUNCTIONS
*/
-- 3 (Creating Inline Function)
CREATE FUNCTION TransactionList
(
    @EmployeeNumber INT
)
RETURNS TABLE AS RETURN
(
    SELECT * FROM tblTransaction 
    WHERE EmployeeNumber = @EmployeeNumber
)
GO




CREATE FUNCTION dbo.FunctionName (@param1 int)

RETURNS 



-- 4 (Calling Inline Function)

SELECT * FROM dbo.TransactionList(123);


-- 5 (Simulating Function using JOINS)

SELECT * FROM tblEmployee
WHERE EXISTS(SELECT * FROM dbo.TransactionList(EmployeeNumber));