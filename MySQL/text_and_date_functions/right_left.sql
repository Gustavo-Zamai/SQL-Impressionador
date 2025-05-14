/*
RIGHT and LEFT
Allows extract a part of text, in the left or right

SYNTAX 
	LEFT(textToBeExtract, numberOfChar)
    RIGHT(textToBeExtract, numberOfChar)
*/
-- Examples
-- 1) Split in 2 parts 'SQL' and 'Impressionador'
SET @var = 'SQL Impressionador';

SELECT 
	LEFT(@var, 3) AS 'Left',
    RIGHT(@var, 14) AS 'Right';
    
-- 2) Split in 2 (SN, numbers) to the Num_serie column value
SELECT * FROM PRODUTOS;

SELECT
	LEFT(Num_serie, 2) AS 'Cod.',
    RIGHT(Num_serie, 4) AS 'Cod.'
FROM PRODUTOS;