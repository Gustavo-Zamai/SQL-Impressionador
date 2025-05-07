-- Select specific columns from a table:
-- a) Nome_produto from Produtos table
SELECT Nome_produto FROM produtos;

-- b) ID_Produto, Nome_produto, Preco_Unit from Produtos table
SELECT ID_Produto, Nome_produto, Preco_unit FROM produtos;

-- c) Choose 4 columns from Produtos table
SELECT 
	ID_Produto,
    Marca_produto,
    Num_serie,
    Custo_unit
FROM produtos;

-- Exercises:
-- 1) Show Nome, Sobrenome and Sexo from Clientes table
SELECT
	Nome,
    Sobrenome,
    Sexo
FROM clientes;

-- 2) List Nome and Escolaridade from Clientes table
SELECT
	Nome,
    Escolaridade
FROM clientes;

-- 3) Cidade from Locais table
SELECT Cidade FROM locais;

-- 4) Show Loja and Gerente from Lojas table
SELECT
	Loja,
    Gerente
FROM lojas;

-- 5) List Nome and Telefone from Clientes table
SELECT
	Nome,
    Telefone
FROM clientes;