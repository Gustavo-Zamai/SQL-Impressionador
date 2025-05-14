/*
LCASE and UCASE
Leave the text in upper and lower case, respectively
*/
-- Examples
-- 1) Use LCASE and UCASE with variables below
SET @firstName = 'Gustavo';
SET @lastName = 'Zamai';

SELECT
	LCASE(@firstName) AS 'Lower',
    UCASE(@lastName) AS 'Upper';
    
-- 2) Use UCASE and LCASE functions in fullname column
SELECT
	LCASE(CONCAT_WS(' ', Nome, Sobrenome)) AS 'Fullname in Lowercase',
    UCASE(CONCAT_WS(' ', Nome, Sobrenome)) AS 'Fullname in Uppercase',
	CONCAT_WS(' ', Nome, Sobrenome) AS 'Fullname'
FROM CLIENTES
ORDER BY Fullname; 