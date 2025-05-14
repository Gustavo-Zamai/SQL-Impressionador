/*
DATE_DIFF, DATE_ADD, DATE_SUB
	
    - DATE_DIFF = Returns the difference between dates
		SYNTAX
		 - DATEDIFF(lastDate, initialDate);
	
    - DATE_ADD = add days/months/year from a date
		SYNTAX
		 - DATE_ADD(dateToManipulate, INTERVAL value DAY/MONTH/YEAR);

	- DATE_SUB = subtract days/months/year from a date
		SYNTAX
        - DATE_SUB(dateToManipulate, INTERVAL value DAY/MONTH/YEAR);
*/

-- Exercises
-- 1) Calculate the time (in days) to delivery
SET @initialDate = '2021-04-10';
SET @endDate = '2021-07-15';

SET @result = DATEDIFF(@endDate, @initialDate);	

SELECT @result AS 'Days until delivery';

-- 2) We will delivery the project 10 days after the initial date
SET @initialDate = '2021-04-10';
SELECT DATE_ADD(@initialDate, INTERVAL 10 DAY) AS 'Limit Date';

-- 3) We finish a project in '2021-09-21' and last trough 10 days, when its begin ?
SET @endDate = '2021-09-21';
SELECT DATE_SUB(@endDate, INTERVAL 10 DAY) AS 'Initial Date';