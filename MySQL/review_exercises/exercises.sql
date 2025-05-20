-- Exercises
-- 1) List all customers who have an annual income greater than 80,000.
SELECT
	*
FROM
	CLIENTES
WHERE
	Renda_anual > 80000;

-- 2) Display the products where the brand name contains the word "Tech".
SELECT
	Nome_produto AS 'Product Name',
	Marca_produto AS 'Brand'
FROM
	Produtos
WHERE Marca_produto LIKE '%TECH%';

-- 3) List the names of customers who have no phone number registered.
SELECT
	CONCAT_WS(' ', Nome, Sobrenome) AS 'Name'
FROM
	CLIENTES
WHERE 
	Telefone IS NULL
ORDER BY Name;
    
-- 4) Show all orders with revenue (Receita_venda) between 500 and 1500.
SELECT
	ID_Pedido AS 'Order ID',
    Receita_venda AS 'Sale Revenue'
FROM
	pedidos
WHERE Receita_venda BETWEEN 500 AND 1500
ORDER BY Receita_venda DESC;

-- 5) List the stores located in cities in the South or Southeast region.
SELECT * FROM Lojas;
SELECT * FROM Locais;
SELECT
	DISTINCT Lojas.Loja AS 'Store'
FROM
	Lojas
INNER JOIN
	Locais
ON Lojas.Loja = Locais.Cidade
WHERE Locais.Regiao IN('SUL', 'SUDESTE');

-- 6) Find all products with unit prices above the average price of all products.
SELECT 
	Nome_produto AS 'Product Name',
    Marca_produto AS 'Brand',
    Preco_unit AS 'Unit Price'
FROM Produtos
WHERE Preco_unit > (
	SELECT AVG(Preco_unit) FROM Produtos
)
ORDER BY Preco_unit DESC;

-- 7) Show the number of orders per customer, only for those who placed more than 5 orders.
select * from pedidos;
SELECT
	 CONCAT_WS(' ' , clientes.Nome, clientes.Sobrenome) AS 'Customer Name',
     COUNT(*) AS 'Number of Orders'
FROM
	pedidos
INNER JOIN
	clientes
ON pedidos.ID_Cliente = clientes.ID_Cliente
GROUP BY CONCAT_WS(' ' , clientes.Nome, clientes.Sobrenome)
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC;

-- 8) Display the product names and their categories.
SELECT * FROM Produtos;
SELECT * FROM categorias;

SELECT
	produtos.Nome_produto AS 'Product Name',
	categorias.Categoria AS 'Category'
FROM
	produtos
INNER JOIN
	categorias
ON produtos.ID_Categoria = categorias.ID_Categoria
ORDER BY produtos.Nome_produto;
    
-- 9) Show the total number of units sold per product category.
SELECT * FROM pedidos;

SELECT 
    categorias.Categoria AS 'Category',
    SUM(Qtd_vendida) AS 'Total'
FROM
	pedidos
JOIN
	produtos
ON pedidos.ID_Produto = produtos.ID_Produto
JOIN
	categorias
ON produtos.ID_Categoria = categorias.ID_Categoria
GROUP BY categorias.Categoria
ORDER BY categorias.Categoria;

-- 10) Show, for each product category: 
-- The total number of units sold (SUM(Qty_sold)),
-- The total revenue (SUM(Sales_revenue)),
-- The average ticket per unit sold (AVG(Sales_revenue / Qty_sold)),
-- And sort the results by total revenue (from highest to lowest).

SELECT
	categorias.Categoria AS 'Category',
    SUM(pedidos.Qtd_vendida) AS 'Unit Sold',
    SUM(pedidos.Receita_venda) AS 'Total Revenue',
    ROUND(AVG(pedidos.Receita_venda/pedidos.Qtd_vendida), 2) AS 'Average Ticket'
FROM
	pedidos
JOIN
	produtos
ON pedidos.ID_Produto = produtos.ID_Produto
JOIN
	categorias
ON produtos.ID_Categoria = categorias.ID_Categoria
GROUP BY categorias.Categoria
ORDER BY `Total Revenue` DESC;

-- 11) Show categories whose average ticket price per unit sold is higher than the overall average ticket price for all orders.
SELECT
	categorias.Categoria AS 'Category',
    ROUND(AVG(pedidos.Receita_venda/pedidos.Qtd_vendida), 2) AS 'Average Ticket'
FROM
	pedidos
JOIN
	produtos
ON pedidos.ID_Produto = produtos.ID_Produto
JOIN
	categorias
ON produtos.ID_Categoria = categorias.ID_Categoria
GROUP BY categorias.Categoria
HAVING AVG(pedidos.Receita_venda/pedidos.Qtd_vendida) > (
	SELECT
		SUM(pedidos.Receita_venda)/SUM(pedidos.Qtd_vendida)
	FROM
		pedidos
)
ORDER BY `Average Ticket` DESC;
    
-- 12) List the best-selling products in each region (Locais.Regiao) based on the sum of Qty_sold.
WITH ProdutoVendaPorRegiao AS (
    SELECT
        locais.Regiao AS Region,
        produtos.Nome_produto AS Product_Name,
        SUM(pedidos.Qtd_vendida) AS Total_Unit_Sold,
        ROW_NUMBER() OVER (PARTITION BY locais.Regiao ORDER BY SUM(pedidos.Qtd_vendida) DESC) AS RankProduto
    FROM
        pedidos
    JOIN produtos ON pedidos.ID_Produto = produtos.ID_Produto
    JOIN lojas ON pedidos.ID_Loja = lojas.ID_Loja
    JOIN locais ON lojas.Loja = locais.Cidade
    GROUP BY locais.Regiao, produtos.Nome_produto
)
SELECT
    Region,
    Product_Name,
    Total_Unit_Sold
FROM
    ProdutoVendaPorRegiao
WHERE
    RankProduto = 1;