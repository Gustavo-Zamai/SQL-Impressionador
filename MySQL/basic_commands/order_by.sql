/* 	ORDER BY
	Order a table by one or more columns
    
    ASC (DEFAULT): Ascending
		Texts: A - Z
		Numbers: growing
		Dates: older to newer
	DESC: Descendant
		Texts: Z - A
        Numbers: decreasing
        Dates: newer to older */
        
-- 1) Order column Nome from Clientes table ASC
SELECT * 
FROM clientes 
ORDER BY Nome;

-- 2) Order column Nome from Clientes table DESC
SELECT *
FROM clientes
ORDER BY Nome DESC;

-- 3) Order column Renda_anual ASC
SELECT *
FROM clientes
ORDER BY Renda_anual;

-- 4) Order column Renda_anual DESC
SELECT *
FROM clientes
ORDER BY Renda_anual DESC;

-- 5) Order column Data_nascimento ASC
SELECT *
FROM clientes
ORDER BY Data_nascimento;

-- 6) Order column Data_nascimento DESC 
SELECT *
FROM clientes
ORDER BY Data_nascimento DESC;

 -- 7) Order Qtd_filhos and Data_nascimento
 SELECT *
 FROM clientes
 ORDER BY Qtd_filhos DESC, Data_nascimento DESC;

-- 8) Order Nome and Sobrenome columns
SELECT *
FROM clientes
ORDER BY Nome, Sobrenome;