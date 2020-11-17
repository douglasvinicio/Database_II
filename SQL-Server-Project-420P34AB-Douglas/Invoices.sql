/*
    1 - CREATING THE DATABASE
*/
-- Deleting table if it exists
DROP TABLE IF EXISTS Invoices;

-- Creating table
CREATE TABLE Invoices
(
    InvoiceNumber INT,
    InvoiceDate DATE,
    InvoiceTotal INT,
    CreditTotal INT,
    PaymentTotal INT
);
GO

/*
    !!  ATTENTION  !!
    ########################################################
    2 - Use file Inserting-Data.SQL to populate the Database
    ########################################################
*/


/*
    3 - CREATE THE STORED PROCEDURE 
*/

-- DELETING PROCEDURE IF EXISTS
DROP PROCEDURE IF EXISTS [dbo].[spDateRange]
GO

-- CREATING PROCEDURE
CREATE PROC spDateRange
(
    @DateMin DATE NULL = DEFAULT,
    @DateMax DATE NULL = DEFAULT
) AS
BEGIN
    
    BEGIN
    IF @DateMax IS NULL OR @DateMin IS NULL
    RAISERROR ('There is at least one parameter missing! Please, re-check your query and try again!',
               16, -- Severity.
               1 -- State.
               );
    END
    
    IF (@DateMin > @DateMax)
     RAISERROR ('The START date is BIGGER than the END date. Re-check your query.', 
               16, -- Severity. 
               1 -- State.
               );
    ELSE
        BEGIN
            SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, Balance =  InvoiceTotal - (PaymentTotal + CreditTotal)
            FROM Invoices
            WHERE InvoiceDate BETWEEN @DateMin AND @DateMax
            ORDER BY InvoiceDate ASC
        END
    END
GO


-- CALLING THE STORED PROCEDURE

-- No Parameters
EXECUTE spDateRange; 

-- One parameter only
EXECUTE spDateRange '2015-03-03'; 

-- @DateMin Bigger than @DateMax
EXECUTE spDateRange '2020-04-20','2020-04-10'; 

-- Two parameters 
-- FROM April 10,2020 TO April 20, 2020
EXECUTE spDateRange '2020-04-10','2020-04-20';  

EXECUTE spDateRange @DateMin = '2020-04-10', @DateMax = '2020-04-20';