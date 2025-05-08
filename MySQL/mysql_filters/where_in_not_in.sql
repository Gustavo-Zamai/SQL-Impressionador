-- WHERE (IN, NOT IN)

-- Specify with value we are looking for into the column/table

/* SYNTAX:
SELECT *
FROM TABLE
WHERE Column1 IN (value1, value2, value3)
 */
 
 -- Exercises
 -- 1) 
 SELECT *
 FROM produtos
 WHERE Marca_produto IN ('Martins S/A', 'Barros Ltda.', 'Sales Comércio');
 
 -- 2) Clients Estado_civil (maritial status) Divorciado (divorced) and Viuvo (widower)
 SELECT 
	Nome AS 'First Name',
    Estado_civil AS 'Maritial Status'
FROM clientes
WHERE Estado_civil IN ('Divorciado', 'Viúvo');
 
-- 3) Pedidos (orders) by clients with IDs 3, 7, 15 and 21
SELECT *
FROM pedidos
WHERE ID_Cliente IN (3, 7, 15, 21)
ORDER BY Receita_venda;
 
-- 4) Produtos (products) are not in category with IDs 1, 2 or 3
SELECT *
FROM produtos
WHERE ID_Categoria NOT IN (1, 2, 3);
 
-- 5) Lojas (Store) are not in São Paulo, Rio de Janeiro or Salvador
SELECT *
FROM lojas
WHERE Loja NOT IN ('São Paulo', 'Rio de Janeiro', 'Salvador');