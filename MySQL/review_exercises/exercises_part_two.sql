-- 1) Display the average sale revenue per store, sorted from highest to lowest.
SELECT
	lojas.Loja AS 'Store',
	ROUND(AVG(pedidos.Receita_venda), 2) AS 'Average Sale Revenue'
FROM
	pedidos
JOIN
	lojas
ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY lojas.Loja
ORDER BY `Average Sale Revenue` DESC;

-- 2) List the top 5 customers who generated the most revenue (total of Receita_venda).
SELECT
	CONCAT_WS(' ', clientes.Nome, clientes.Sobrenome) AS 'Customer',
	SUM(pedidos.Receita_venda) AS 'Sale Revenue'
FROM
	pedidos
JOIN
	clientes
ON pedidos.ID_Cliente = clientes.ID_Cliente
GROUP BY `Customer`
ORDER BY `Sale Revenue` DESC
LIMIT 5;

-- 3) Find the product with the highest and lowest unit cost.
SELECT
	produtos.Nome_produto AS 'Product Name',
	MAX(pedidos.Custo_unit) AS 'Highest Unit Cost',
	MIN(pedidos.Custo_unit) AS 'Lowest Unit Cost'
FROM
	pedidos
JOIN
	produtos
ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY produtos.Nome_produto;

-- 4) List all products whose name starts with 'S'.
SELECT
	Nome_produto AS 'Product Name'
FROM
	produtos
WHERE Nome_produto LIKE "S%";

-- 5) Show the number of stores that have no phone number registered.
SELECT
	COUNT(*) AS 'Stores Without Phone Number'
FROM
	lojas
WHERE Telefone IS NULL;

-- 6) List the categories that have more than 3 products.
SELECT
	categorias.Categoria AS 'Category',
    COUNT(produtos.Nome_produto) AS 'Number of Products'
FROM
	produtos
JOIN
	categorias
ON produtos.ID_Categoria = categorias.ID_Categoria
GROUP BY categorias.Categoria
HAVING `Number of Products` > 3
ORDER BY `Number of Products` DESC;

-- 7) Display the number of male and female customers.
SELECT
	Sexo AS 'Gender',
	COUNT(*) AS 'Number Per Gender'
FROM
	clientes
GROUP BY sexo;

-- 8) List the number of customers grouped by gender and education.
SELECT
	Sexo AS 'Gender',
    Escolaridade AS 'Education Level',
	COUNT(*) AS 'Number Per Gender'
FROM
	clientes
GROUP BY Sexo, Escolaridade
ORDER BY `Gender`;

-- 9) Display the gender of customers and their average annual income
SELECT
	Sexo AS 'Gender',
	ROUND(AVG(Renda_anual), 2) AS 'Average Annual Income Per Gender'
FROM
	clientes
GROUP BY Sexo;
    
-- 10) Show the genres that have more than 5 registered customers.
SELECT
	Sexo AS 'Gender',
    COUNT(*) AS 'Number Per Gender'
FROM
	clientes
GROUP BY Sexo
HAVING COUNT(*) > 5;

-- 11) Show the name and revenue of orders where the customer’s name contains "Ana".
SELECT
	CONCAT_WS(' ', clientes.Nome, clientes.Sobrenome) AS 'Customer',
    pedidos.Receita_venda AS 'Order Revenue'
FROM
	pedidos
JOIN
	clientes
ON pedidos.ID_Cliente = clientes.ID_Cliente
WHERE clientes.Nome LIKE '%ana%';

-- 12) Display the quantity of products sold grouped by store and year of sale.
SELECT * FROM PEDIDOS;
SELECT
	lojas.Loja AS 'Store',
	YEAR(pedidos.Data_venda) AS 'Year of Sale',
    SUM(pedidos.Qtd_vendida) AS 'Quantity of Products Sold'
FROM
	pedidos
JOIN
	lojas
ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY lojas.Loja, YEAR(pedidos.Data_venda)
ORDER BY COUNT(*) DESC;

-- 13) List all stores along with their city, state, and region (using joins).
SELECT * FROM lojas;
SELECT
	lojas.Loja AS 'Store',
    lojas.Gerente AS 'Manager',
    lojas.Endereco AS 'Address',
	locais.Cidade AS 'City',
	locais.Estado AS 'State',
    locais.Regiao AS 'Region',
    lojas.Num_funcionarios AS 'Number of Employees',
    lojas.Telefone AS 'Phone Number'
FROM
	lojas
LEFT JOIN
	locais
ON lojas.Loja = locais.Cidade
ORDER BY lojas.Loja;