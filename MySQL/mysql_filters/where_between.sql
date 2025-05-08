-- WHERE (BETWEEN)

-- 

-- SYNTAX
-- SELECT *
-- FROM TABLE
-- WHERE Column1 BETWEEN value1 AND value2;

-- Exercises
-- 1) Products with Preco_unit 1.000 - 2.500
SELECT 
	Nome_produto AS 'Product Name',
    Marca_produto AS 'Brand',
    Preco_unit AS 'Unit Price'
FROM produtos
WHERE Preco_unit
BETWEEN 1000 AND 2500
ORDER BY Preco_unit DESC;

-- 2) Clients who was born 01/01/1985 - 31/12/1990
SELECT
	Nome AS 'First Name',
    Sobrenome AS 'Last Name',
    Data_nascimento AS 'Data of Birth'
FROM clientes
WHERE Data_nascimento BETWEEN '1985-01-01' AND '1990-12-31'
ORDER BY Nome;

-- 3) Renda_anual 50.000 - 100.000
SELECT 
	Nome AS 'First Name',
    Sobrenome AS 'Last Name',
    Renda_anual AS 'Annual Income'
FROM clientes
WHERE Renda_anual BETWEEN 50000 AND 100000
ORDER BY Renda_anual DESC;

-- 4) Pedidos (orders) 2023/01/01 - 2023/06/30
SELECT
	Data_venda AS 'Sale Date',
    Qtd_vendida AS 'Quantity Sold',
    Receita_venda AS 'Sales Revenue'
FROM pedidos
WHERE Data_venda BETWEEN '2023-01-01' AND '2023-06-30'
ORDER BY Receita_venda;

-- 5) Clientes (clients) who has 2 - 4 children
SELECT
	Nome AS 'First Name',
    Estado_civil AS 'Maritial Status',
    Qtd_filhos AS 'Number of Children'
FROM clientes
WHERE Qtd_filhos BETWEEN 2 AND 4
ORDER BY Qtd_filhos;

-- 6) Produtos (products) unit cost 700 - 1.200
SELECT *
FROM produtos
WHERE Custo_unit BETWEEN 700 AND 1200
ORDER BY Custo_unit DESC;