-- WHERE (AND, OR, NOT)

-- AND, OR = Filter more than one Column at the same time
-- NOT = Denial the value 

-- Syntax (AND) = All conditoins must be true
-- SELECT Column1, Column2, Column3
-- FROM TABLE
-- WHERE Column1 = Value AND Column2 = Value;

-- Syntax (OR) = One condition is enough
-- SELECT Column1, Column2, Column3
-- FROM TABLE
-- WHERE Column1 = Value OR Column2 = Value;

-- Syntax (NOT)
-- SELECT Column1, Column2, Column3
-- FROM TABLE
-- WHERE NOT Column1 = Value;

-- Exercises
-- 1) Marca_produto equal Ferraz e Associados and Preco-unit equal or greater than 1.000
SELECT 
	Nome_produto AS 'Product Name',
    Marca_produto AS 'Brand',
    Preco_unit AS 'Unit Price'
FROM produtos
WHERE Marca_produto = 'Ferraz e Associados' AND Preco_unit >= 1000
ORDER BY Preco_unit DESC;

-- 2) Marca_produto equals to Sales Comércio or Ramos Comércio
SELECT * 
FROM produtos
WHERE Marca_produto = 'Sales Comércio' OR Marca_produto = 'Ramos Comércio'
ORDER BY Preco_unit;

-- 3) Marca_produto not equal to Silva e Associados
SELECT *
FROM produtos
WHERE NOT Marca_produto = 'Silva e Associados'
ORDER BY Nome_produto;