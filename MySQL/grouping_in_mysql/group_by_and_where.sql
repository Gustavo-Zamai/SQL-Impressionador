/*
GROUP BY + WHERE

Create filters BEFORE a certain grouping.
*/

-- Exercises
-- 1) create a grouping showing total customers by education, but only female customers.
SELECT
	Escolaridade AS 'Education Level',
    COUNT(*) AS 'Total Customer'
FROM CLIENTES
WHERE Sexo = 'Feminino'
GROUP BY Escolaridade
ORDER BY COUNT(*) DESC;