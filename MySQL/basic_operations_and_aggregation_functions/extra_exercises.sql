-- Extra Exercises
-- 1) Count the total number of orders.
SELECT
	COUNT(*) AS 'All Orders'
FROM pedidos;

-- 2) Show the total number of products sold (sum of quantity sold).
SELECT
	SUM(Qtd_vendida) AS 'Total Product Sold'
FROM pedidos;

-- 3) Calculate the total sum of sales revenue from all orders.
SELECT
	SUM(Receita_venda)  AS 'Sales Revenue'
FROM pedidos;

-- 4) Calculate the average unit price (Preco_unit) of all products.
SELECT
	AVG(Preco_unit) AS 'Average Unit Price'
FROM produtos;

-- 5) Display the average sale cost (Custo_venda).
SELECT
	AVG(Custo_venda) AS 'Average Sale Cost'
FROM pedidos;

-- 6) Find the lowest unit price (Custo_unit) among all products.
SELECT 
	MIN(Custo_unit) AS 'Lowest Unit Price'
FROM produtos;

-- 7) Show the highest number of children among all customers.
SELECT
	MAX(Qtd_filhos) AS 'Highest Number of Children'
FROM clientes;