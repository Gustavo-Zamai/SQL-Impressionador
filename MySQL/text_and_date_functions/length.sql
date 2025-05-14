/*
LENGTH
Returns the number of characters in a text
	- Includes spaces, special characters and etc.
*/
-- Examples
-- 1) Number of characters in 'SQL Impressionador'
SET @phrase = 'SQL Impressionador';

SELECT LENGTH(@phrase) AS 'Number of Characters';

-- 2) Find out the number of characters in each name in the customers table.
SELECT * FROM CLIENTES;
SELECT
	Nome AS 'Name',
    LENGTH(Nome) AS 'Number of Characters'
FROM CLIENTES
ORDER BY LENGTH(Nome) DESC;