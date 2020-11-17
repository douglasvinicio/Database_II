-- Version 2 - SMALLINT - ERROR : Arithmetic overflow error for data type smallint, value = 200000.


-- Declaring the variable
DECLARE @MyVariable SMALLINT;
-- Initialize the variable. Trying 200k instead of 20k
SET @MyVariable = 200000;
-- Output variable value
SELECT @MyVariable AS VariableValue;