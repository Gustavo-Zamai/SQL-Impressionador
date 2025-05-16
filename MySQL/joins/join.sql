/*
INNER JOIN

OBJECTIVE OF RELATING/JOINING DATA FROM TABLE A WITH TABLE B

SYNTAX
SELECT
	tableA.column1,
    tableA.column2,
    tableA.column3,
    tableB.column4
FROM
	tableA
INNER JOIN
	tableB
ON tableA.foreignKey = tableB.primaryKey
*/

-- Exercises
-- 1) Relate products (Produtos) and orders (Pedidos)
-- SELECT * FROM PEDIDOS;
-- SELECT * FROM PRODUTOS;
-- id_pedido, data_venda, id_produto, qtd_vendida, receita_venda, 
-- nome_produto, Marca_produto
SELECT
	P.ID_Pedido AS 'Order ID',
    P.ID_Produto AS 'Product ID',
    P.Data_venda AS 'Sale Date',
    P.Qtd_vendida AS 'Quantity Sold',
    P.Receita_venda AS 'Total Revenue',
	PR.Nome_produto AS 'Product',
	PR.Marca_produto AS 'Brand'
FROM 
	PEDIDOS AS P
INNER JOIN
	PRODUTOS AS PR
	ON (P.ID_Produto = PR.ID_Produto);
-- ORDER BY P.ID_Pedido;

-- 2) Relate customer (Clientes) and orders (Pedidos)
SELECT * FROM CLIENTES;
SELECT * FROM PEDIDOS;

SELECT
	p.ID_Pedido AS 'Order ID',
    p.ID_Cliente AS 'Customer ID',
    p.Qtd_vendida AS 'Quantity Sold',
    p.Data_venda AS 'Sale Date',
    CONCAT_WS(' ', c.Nome, c.Sobrenome) AS 'Customer Name',
    c.Email AS 'Email',
    c.Telefone AS 'Phone',
    c.Renda_anual AS 'Annual Income'
FROM
	pedidos AS p
INNER JOIN
	clientes AS c
    ON (p.ID_Cliente = c.ID_Cliente); 