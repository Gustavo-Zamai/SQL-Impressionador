-- INNER JOIN + GROUP BY

-- EXERCISES
-- 1)
-- a) Group by product ID to show total revenue
SELECT
	ID_Produto AS 'Product ID',
    SUM(Receita_venda) AS 'Total Revenue'
FROM
	pedidos
GROUP BY ID_Produto;
-- b) Change the query you created to show the product name instead of the product ID
SELECT
	produtos.Nome_produto AS 'Product Name',
    SUM(pedidos.Receita_venda) AS 'Total Revenue'
FROM
	pedidos
INNER JOIN
	produtos
ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY produtos.Nome_produto;


-- 2)
-- a) Group by store ID to show total revenue and cost
SELECT 
	ID_Loja AS 'Store ID',
    ROUND(SUM(Receita_venda), 2) AS 'Total Revenue',
    ROUND(SUM(Custo_venda), 2) AS 'Total Cost'
FROM PEDIDOS
GROUP BY ID_Loja;
	
-- b) Change the created query to show the store name instead of the store ID
SELECT 
	lojas.Loja AS 'Store Name',
    ROUND(SUM(pedidos.Receita_venda), 2) AS 'Total Revenue',
    ROUND(SUM(pedidos.Custo_venda), 2) AS 'Total Cost'
FROM 
	pedidos
INNER JOIN
	Lojas
ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY lojas.Loja
ORDER BY lojas.Loja;