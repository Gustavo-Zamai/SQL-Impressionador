/*
CONCAT and CONCAT_WS
Used to concatenate texts. 
	- The second option allows you to specify at once the separator used between each text
*/
-- Examples
-- 1) Create 2 variables @firstName and @lastName, use concat and concat_ws to fill the variable @fullName.
SET @firstName = 'Gustavo';
SET @middleName = 'Simao';
SET @lastName = 'Zamai';
SET @fullNameConcat = CONCAT(@firstName, ' ', @middleName, ' ', @lastName);
SET @fullNameConcatWs = CONCAT_WS(' ', @firstName, @middleName, @lastName);

SELECT @fullNameConcat AS 'Fullname';
SELECT @fullNameConcatWs AS 'Fullname';

-- 2) Create a column Nome Completo (Fullname) into Clientes (Customer) table, using CONCAT and CONCAT_WS
SELECT * FROM CLIENTES;
SELECT 
	ID_Cliente AS 'Customer ID',
    CONCAT_WS(' ', Nome, Sobrenome) AS 'Fullname',
    Email
FROM CLIENTES;
-- ORDER BY Fullname;