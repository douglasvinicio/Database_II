-- Version 1 - SMALLINT

-- Declaring the variable
DECLARE @MyVariable SMALLINT;

-- Initialize the variable.
SET @MyVariable = 20000;

-- Output variable value
SELECT @MyVariable AS VariableValue;

GO


-- Version 2 - SMALLINT - ERROR : Arithmetic overflow error for data type smallint, value = 200000.

-- Declaring the variable
DECLARE @MyVariable SMALLINT;
-- Initialize the variable. Trying 200k instead of 20k
SET @MyVariable = -5;
-- Output variable value
SELECT @MyVariable AS VariableValue;

GO

-- Version 3 - INT

-- Declaring the variable as INT to accept values higher than 200k
DECLARE @MyVariable INT;

-- Initialize the variable. Trying 200k instead of 20k
SET @MyVariable = 200000;

-- Output variable value
SELECT @MyVariable AS VariableValue;

GO


-- Version 4 - TINYINT - ERROR : Arithmetic overflow error for data type tinyint, value = 20000.

-- Declaring the variable as TINYINT
DECLARE @MyVariable TINYINT;

-- Initialize the variable. Trying 200k instead of 20k
SET @MyVariable = -5;

-- Output variable value
SELECT @MyVariable AS VariableValue;


-- Comments : 
-- I'm using Azure Data Service and SQL Server 2017 running on a Docker. 
-- When running line by line i always get the error "Must declare the scalar variable '@MyVariable' "
-- When I run it all at the same time it works fine. 