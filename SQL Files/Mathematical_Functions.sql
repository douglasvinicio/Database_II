-- Mathematical Functions

-- square, power, sqrt, floor 

DECLARE @myVar AS INT;

SET @myVar = 3;

SELECT POWER(@myVar,3);
-- SQUARE
SELECT SQUARE(@myVar) AS Square;
-- SQUARE ROOT
SELECT SQRT(@myVar) AS SQRT;

GO
-- Declaring myVar2 as NUMERIC
DECLARE @myVar2 AS NUMERIC (7,2);
SET @myVar2 = 12.43

-- FLOOR and CEILING
SELECT FLOOR(@myVar2) AS FLOOR;
SELECT CEILING(@myVar2) AS CEILING;
SELECT ROUND(@myVar2, 1);

-- PI
SELECT PI() AS myPi;
SELECT EXP(@myVar2) AS expo;
GO

DECLARE @myVar3 AS NUMERIC(7,2) = 456;

SELECT ABS(@myVar3) as MyABS, SIGN(@myVar3) AS MySign;

SELECT RAND() AS RandomNumber;

