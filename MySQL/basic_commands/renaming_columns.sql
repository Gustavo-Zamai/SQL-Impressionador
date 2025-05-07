-- Using AS (Alias) to display a better name for the columns 
SELECT
	ID_Produto AS 'Product ID',
    Nome_produto AS 'Product Name',
    Marca_produto AS 'Brand',
    Custo_unit AS 'Unit Cost'
FROM produtos;