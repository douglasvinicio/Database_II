DROP TABLE IF EXISTS tblPrimeNumbers;

CREATE TABLE tblPrimeNumbers (intField INT);

-- INSERTING DATA INTO TABLE 
INSERT INTO tblPrimeNumbers VALUES (2),(3),(5),(7),(11);

-- SHOWING ALL DATA
SELECT * FROM tblPrimeNumbers;

-- REMOVE ALL DATA FROM TABLE 
-- Using DELETE 
DELETE FROM tblPrimeNumbers;

-- Using TRUNCATE
TRUNCATE TABLE tblPrimeNumbers;

-- DELETING TABLE 
DROP TABLE tblPrimeNumbers;



