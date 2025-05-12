/*
Variables

SET @nameOfVariable = value;

USER-DEFINED VARIABLES - use SET to create a new variable

Data types:
	- INT = 1
    - DECIMAL = 12,00 / 1234,567
    - VARCHAR = 'gUSTAVO'
    - DATE = 01/01/1999
    - DATETIME = 01/01/9999 10:33:34
*/

-- Exercises
-- 1) A STORE SOLD 10 UNITS OF A CERTAIN PRODUCT, AT A PRICE OF 10.90 EACH. IT USES VARIABLES TO CALCULATE THE REVENUE GENERATED FROM THIS SALE.
SET @units = 10;
SET @pricePerProduct = 10.90;
SET @revenue = @units * @pricePerProduct;
SELECT @revenue AS 'Total Revenue';

-- 2) Show only Xiaomi brand
SET @brand = 'Xiaomi';
SELECT *
FROM PRODUTOS
WHERE Marca_produto = @brand;

-- CASTING
/*
Convert variables into a different data type
INT = SIGNED (- AND +) or UNSIGNED (ONLY POSITIVE VALUES +)
VARCHAR = CHAR
*/
SET @castVariable = 10.9200;

SELECT @castVariable,
		CAST(@castVariable AS SIGNED),
        CAST(@castVariable AS DECIMAL(10,2)),
        CAST(@castVariable AS CHAR(3));

SET @dateCastVariable = '2025-05-12';

SELECT @dateCastVariable,
		CAST(@dateCastVariable AS DATE),
        CAST(@dateCastVariable AS DATETIME);