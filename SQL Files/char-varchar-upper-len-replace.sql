-- Strings 
-- CHAR - ascii characters - Used the length is consisten we use char
-- VARCHAR - ascii - If not, we use varchar
-- NCHAR - is for unicode and special characters
-- NVARCHAR - unicode as well 

DECLARE @chMycharacters as CHAR(10);
SET @chMycharacters = 'Hello World!';
SELECT @chMycharacters as MyString, len(@chMycharacters) AS MyLength, DATALENGTH(@chMycharacters) as MyDataLength;

-- LEFT and RIGHT
SELECT LEFT(@chMycharacters,2), RIGHT(@chMycharacters,3);

-- SUBSTRING
SELECT SUBSTRING(@chMycharacters,3,7)

-- REPLACE
SELECT REPLACE(@chMycharacters,'l','L') as MyReplacement;

-- UPPER and LOWER
SELECT UPPER(@chMycharacters) as MyUpper, LOWER(@chMycharacters) as MyLower


