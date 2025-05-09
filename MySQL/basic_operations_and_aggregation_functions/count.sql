-- COUNT, COUNT(*), COUNT(DISTINCT)
-- Functions that count through our tables
/* Syntax
SELECT
	COUNT(Column) AS 'Value Count'
FROM Table;
*/

-- Exercises
-- a) Count the number of customers from column Nome 
SELECT 
	COUNT(Nome) AS 'Total Customers'
FROM clientes;

-- b) Count the number of customers from cloumn Telefone 
-- Count function doesnt count null values
SELECT
	COUNT(Telefone) AS 'Total'
FROM clientes;

-- c) COUNT(*)
SELECT
	COUNT(*) AS 'Total'
FROM clientes;

-- d) COUNT(DISTINCT)
-- Return a unique/non repeat value from column
SELECT
	COUNT(DISTINCT Marca_produto) AS 'Different Brands'
FROM produtos;