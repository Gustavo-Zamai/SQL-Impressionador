-- WHERE
-- Filter rows of a table
-- Syntax
-- SELECT Column1, Column2, Column3
-- FROM TABLE
-- WHERE Column1 = Value;

-- Exercises
-- 1) Clients with Renda_anual >= 80000
SELECT * 
FROM clientes
WHERE Renda_anual >= 80000;
-- ORDER BY Qtd_filhos;

-- 2) Only male clients
SELECT 
	Nome AS 'Name',
    Sobrenome AS 'Last Name',
    Sexo AS 'Gender',
    Estado_civil AS 'Maritial Status',
    Qtd_filhos AS 'Number of Children'
FROM clientes
WHERE Sexo = 'Masculino'
ORDER BY Qtd_filhos;

-- 3) Clients who was born after 01/01/1990
SELECT 
	Nome AS 'Name',
    Sobrenome 'Last Name',
    Data_nascimento AS 'Date of Birth',
    Estado_civil AS 'Maritial Status',
    Sexo AS 'Gender',
    Email,
    Telefone AS 'Phone Number',
    Renda_anual AS 'Annual Income',
    Qtd_filhos AS 'Number of Children',
    Escolaridade AS 'Education'
FROM clientes
WHERE Data_nascimento > '1990-01-01'
ORDER BY Data_nascimento;