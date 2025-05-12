-- GROUP BY:
/*
Allows you to create table summaries, allowing data analysis to be performed, 
such as total products by brand, total customers by region, total sales by products, and so on.

Syntax (1 column):
SELECT Column1, COUNT(Column1)
FROM Table 
GROUP BY Column1

Syntax (More than 1 Column):
SELECT Column1, Column2, Column3 COUNT(Column1)
FROM Table
GROUP BY Coumn1, Column2, Column3
*/

-- Exercises
-- 1) Create a grouping showing total products by brand
SELECT 
	Marca_produto AS 'Brand', 
    COUNT(*) AS 'Number of Product' -- COUNT(Marca_produto)
FROM produtos
GROUP BY Marca_produto
ORDER BY COUNT(*) DESC;

-- 2) Create a grouping showing total customers by gender.
SELECT 
	SEXO AS 'Gender',
    COUNT(*) AS 'Total'
FROM clientes
GROUP BY Sexo
ORDER BY COUNT(*);

-- 3) Create a grouping showing total sales by product ID.
SELECT 
	ID_Produto AS 'Product ID',
    COUNT(*) AS 'Total'
FROM pedidos
GROUP BY ID_Produto
ORDER BY COUNT(*) DESC;

-- 4) Create a grouping showing total revenue by product ID.
SELECT
	ID_Produto AS 'Product ID',
    SUM(Receita_venda) AS 'Total Revenue'
FROM pedidos
GROUP BY ID_Produto
ORDER BY SUM(Receita_venda) DESC;

-- Exercises with more than 1 Column
-- 5) Create a grouping showing total customers by education and gender.
SELECT * FROM CLIENTES;
SELECT
	Escolaridade AS 'Education',
    Sexo AS 'Gender',
    COUNT(*) AS 'Total Customer'
FROM CLIENTES
GROUP BY Escolaridade, Sexo
ORDER BY Escolaridade;

-- 6) Create a grouping showing total revenue by product id and store id.
SELECT
	ID_Produto AS 'Product ID',
    ID_Loja AS 'Store ID',
    SUM(Receita_venda) AS 'Total Revenue'
FROM PEDIDOS
GROUP BY ID_Produto, ID_Loja
ORDER BY SUM(Receita_venda) DESC;