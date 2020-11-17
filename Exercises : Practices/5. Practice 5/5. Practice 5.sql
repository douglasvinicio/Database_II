-- FIRST QUERY
SELECT [name] FROM sys.all_columns ORDER BY [name];

-- DECLARING and SETTING Unicode Special Character
DECLARE @MyLetter AS NCHAR(1);
SET @MyLetter = N'Ⱥ';
SELECT NCHAR(UNICODE(@MyLetter)) AS SpecialChar;  

-- CONCATENATING NAME QUERY TO SPECAIL CHARACTER 
SELECT name + @MyLetter FROM sys.all_columns ORDER BY name;

-- SUBSTRINGS
-- Removing the FIRST character from name. 
SELECT SUBSTRING(name + @MyLetter,2,LEN(name)) FROM sys.all_columns ORDER BY name;

-- Removing the LAST original character from name. 
SELECT SUBSTRING(name,1,LEN(name) -1) + @MyLetter FROM sys.all_columns ORDER BY name;





