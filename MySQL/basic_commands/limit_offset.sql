-- LIMIT and OFFSET
-- Select all columns from Pedidos table
SELECT * FROM pedidos;

-- LIMIT: set maximum number of rows to be returned
SELECT * FROM pedidos LIMIT 5;

-- LIMIT + OFFSET
-- OFFSET: start to read the rows
SELECT * FROM pedidos LIMIT 5 OFFSET 20;