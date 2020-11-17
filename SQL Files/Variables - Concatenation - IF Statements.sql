-- JOIN / CONCATENATION VARIABLES

DECLARE @FirstName AS NVARCHAR(20);
DECLARE @MiddletName AS NVARCHAR(20);
DECLARE @LastName AS NVARCHAR(20);

SET @FirstName = 'Sarah';
--SET @MiddletName = 'Hulligan';
SET @LastName = 'Milligan';

SELECT @FirstName + ' ' + @MiddletName + ' ' + @LastName AS FullName
-- If one variable is missing the value would be null

-- IF STATEMENT  / Example

SELECT @FirstName + ' ' + iif(@MiddletName is null,'',' ' + @MiddletName) + ' ' + @LastName AS FullName