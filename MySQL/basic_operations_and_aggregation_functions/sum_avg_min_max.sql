-- SUM, AVG, MIN, MAX

-- Exercises
-- a) Sum of Receita_total
SELECT
	SUM(Receita_venda) AS 'Total'
FROM pedidos;

-- b) Average of Receita_total
SELECT
	AVG(Receita_venda) AS 'Average Sales'
FROM pedidos;

-- c) Minimum of Receita_total
SELECT
	MIN(Receita_venda) AS 'Minimum Sale Value'
FROM pedidos;

-- d) Maximum of Receita_total
SELECT
	MAX(Receita_venda) AS 'Maximum Sale Value'
FROM pedidos;