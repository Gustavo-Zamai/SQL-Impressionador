-- INNER JOIN + WHERE

-- EXERCISES
-- 1) Relate customer (Clientes) and orders (Pedidos)
-- a) Change the query below to include the gender column
-- b) Make a filter to show only males
SELECT
	p.ID_Pedido AS 'Order ID',
    p.ID_Cliente AS 'Customer ID',
    p.Qtd_vendida AS 'Quantity Sold',
    p.Data_venda AS 'Sale Date',
    CONCAT_WS(' ', c.Nome, c.Sobrenome) AS 'Customer Name',
    c.Email AS 'Email',
	c.Sexo AS 'Gender'
FROM
	pedidos AS p
INNER JOIN
	clientes AS c
    ON (p.ID_Cliente = c.ID_Cliente)
WHERE c.Sexo = 'Masculino'; 