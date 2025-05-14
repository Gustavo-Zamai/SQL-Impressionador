/*
REPLACE
Replace a text (Varchar) for another
*/
-- Examples
-- 1) Replace HIMYM with Friends
SET @randomText = 'HIMYM is the best sitcom';
SET @newRandomText = REPLACE(@randomText, 'HIMYM', 'Friends');

SELECT 
	@newRandomText;
    
-- 2) Replace the maritial status text to one char
SELECT * FROM CLIENTES;
SELECT	
	Nome AS 'First Name',
    Estado_civil AS 'Maritial Status',
    REPLACE(REPLACE(REPLACE(REPLACE(Estado_civil, 'Solteiro', 'S'), 'Casado', 'C'), 'Divorciado', 'D'), 'Viúvo', 'V') AS 'Maritial Status Char'
FROM CLIENTES;