-- 1 
SELECT system_type_id, column_id,CAST (system_type_id as NUMERIC) / column_id   AS Calculation FROM sys.all_columns ORDER BY Calculation 

-- 2 
SELECT system_type_id, column_id, 
CAST(system_type_id as NUMERIC) / column_id   
AS Calculation,
FLOOR(CAST(system_type_id as NUMERIC) / column_id) AS WholeNumber
FROM sys.all_columns 
ORDER BY Calculation; 

-- 3
SELECT system_type_id, column_id, 
CAST(system_type_id as NUMERIC) / column_id   
AS Calculation,
CEILING(CAST(system_type_id as NUMERIC) / column_id) AS WholeNumber
FROM sys.all_columns 
ORDER BY Calculation; 


-- 4
SELECT system_type_id, column_id, 
CAST(system_type_id as NUMERIC) / column_id   
AS Calculation,
ROUND(CAST(system_type_id as NUMERIC) / column_id,1) AS FractionsUp
FROM sys.all_columns 
ORDER BY Calculation; 


-- 5
SELECT TRY_CAST(system_type_id * 2 as TINYINT) FROM sys.all_columns AS ConvertedNumbers;
