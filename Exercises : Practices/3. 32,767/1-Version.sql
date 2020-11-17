-- Version 1 - SMALLINT


-- Declaring the variable
DECLARE @MyVariable SMALLINT;

-- Initialize the variable.
SET @MyVariable = 20000;

-- Output variable value
SELECT @MyVariable AS VariableValue;


-- Comments : 
-- When running line by line i always get the error "Must declare the scalar variable '@MyVariable' "
-- When I run it all at the same time it works fine. 
-- I'm using Azure Data Service and SQL Server 2017 running on a Docker. 






