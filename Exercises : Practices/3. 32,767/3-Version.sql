-- Version 3 - INT

-- Declaring the variable as INT to accept values higher than 200k
DECLARE @MyVariable INT;

-- Initialize the variable. Trying 200k instead of 20k
SET @MyVariable = 200000;

-- Output variable value
SELECT @MyVariable AS VariableValue;