-- WHERE (IS NULL, IS NOT NULL)
-- Return null or non null values
/* Syntax
SELECT *
FROM TABLE
WHERE Column1 IS NULL;
*/
-- Exercises
-- 1) Phone number that are not register
SELECT
	Nome AS 'First Name',
    Telefone AS 'Phone Number',
    Email
FROM clientes
WHERE Telefone IS NULL
ORDER BY Nome;

-- 2) Phone number that are missed from stores (Lojas)
SELECT
	Loja AS 'City',
    Gerente AS 'Manager',
    Endereco AS 'Adress',
    Telefone AS 'Phone Number'
FROM lojas
WHERE Telefone IS NULL;	

-- 3) Double check, verify null and empty values
SELECT *
FROM clientes
WHERE Telefone IS NULL OR Telefone = '';