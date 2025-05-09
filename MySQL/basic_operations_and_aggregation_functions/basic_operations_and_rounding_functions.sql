-- Basic Operations and Rounding Functions

-- 1 Basic Operations
-- Used to perform calculations between columns
SELECT
	10 + 20 		AS 'Sum',
    100 - 40 		AS 'Subtracion',
    5 * 20 			AS 'Multiplication',
    300 / 12		AS 'Division',
    (100 - 10) * 4 	AS 'Operation',
    22 % 5 			AS 'Rest';
    
    -- 2 Rounding Functions
    --
    SELECT 
		ROUND(87.149, 1)		AS 'Round',
        FLOOR(87.149)			AS 'Round Down',
        CEILING(87.149)			AS 'Round Up',
        TRUNCATE(87.149, 2) 	AS 'TRUNCATE';