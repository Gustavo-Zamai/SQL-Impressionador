-- WHERE (LIKE)

/* Syntax
SELECT *
FROM TABLE
WHERE Column1 LIKE value;
*/

-- Exercises
-- 1) Emails with .net
SELECT
	Nome AS 'First Name',
    Email
FROM clientes
WHERE Email LIKE '%.net'
ORDER BY Nome;

-- 2) Clientes (clients) start name with letter A 
SELECT 
	Nome AS 'First Name'
FROM clientes
WHERE Nome LIKE 'A%';

-- 3) Produtos (products) has letter L in name
SELECT *
FROM produtos
WHERE Nome_produto LIKE '%l%';

-- 4) Gerentes (manager) who has e twice in name
SELECT
	Loja AS 'Store',
    Gerente AS 'Manager'
FROM lojas
WHERE Gerente LIKE '%e%e%';

-- 5) Clientes (clients) with last name ends with es
SELECT 
	Nome AS 'First Name',
    Sobrenome AS 'Last Name'
FROM clientes
WHERE Sobrenome LIKE '%es';