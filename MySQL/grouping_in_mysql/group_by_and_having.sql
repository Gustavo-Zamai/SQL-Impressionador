/*
GROUP BY + HAVING

Create filters after a certain grouping. For example, show products that had total revenue above a certain value

SYNTAX:
SELECT Column1, COUNT(*)
FROM Table
GROUP BY Column1
HAVING COUNT(*) >= 100;
*/

-- Exercises
-- 1) Create a grouping showing the total number of customers by education level
SELECT 
	Escolaridade AS 'Education Level',
    COUNT(*) AS 'Total Customer'
FROM CLIENTES
GROUP BY Escolaridade
ORDER BY COUNT(*) DESC;

-- FILTER THE RESULTING GROUP TO SHOW ONLY EDUCATIONAL AGENCIES WITH MORE THAN 5 CLIENTS
SELECT 
	Escolaridade AS 'Education Level',
    COUNT(*) AS 'Total Customer'
FROM CLIENTES
GROUP BY Escolaridade
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC;

-- 2) create a grouping showing total revenue by product id
SELECT
	ID_Produto AS 'Product ID',
    SUM(Receita_venda) AS 'Total Revenue'
FROM PEDIDOS
GROUP BY ID_Produto
ORDER BY SUM(Receita_venda) DESC;

-- filter the resulting grouping to show only products that had a total revenue greater than $100K
SELECT
	ID_Produto AS 'Product ID',
    SUM(Receita_venda) AS 'Total Revenue'
FROM PEDIDOS
GROUP BY ID_Produto
HAVING SUM(Receita_venda) > 100000
ORDER BY SUM(Receita_venda) DESC;