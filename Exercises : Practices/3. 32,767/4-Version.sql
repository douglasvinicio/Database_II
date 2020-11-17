-- Version 4 - TINYINT - ERROR : Arithmetic overflow error for data type tinyint, value = 20000.

-- Declaring the variable as TINYINT
DECLARE @MyVariable TINYINT;

-- Initialize the variable. Trying 200k instead of 20k
SET @MyVariable = 20000;

-- Output variable value
SELECT @MyVariable AS VariableValue;