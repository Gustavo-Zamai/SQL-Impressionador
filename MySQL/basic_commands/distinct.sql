-- Distinct: return non repeat values
-- Brand in Produtos table
SELECT * FROM produtos;

SELECT 
DISTINCT
	Marca_produto AS 'Brand'
FROM produtos;