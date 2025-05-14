/*
INSTR and MID
	INSTR 	- returns the position of a character, counts blank spaces
SYNTAX
	INSTR(textWithChar, character);

    MID 	- extract text/char according to a initial position
SYNTAX
	MID(textToManipulate, positionOfFirstCharToSlice, quantityOfCharacterToSlice);
*/
-- Examples
-- 1) Use the email below, to perform the following steps.
-- a) return char '@' position
-- b) return email ID

SET @email = 'gustavo_simao_zamai@gmail.com';

-- Solution A
SET @characterInEmail = INSTR(@email, '@'); -- returns 8
SELECT @characterInEmail AS 'Position';


-- Solution B
-- SET @emailId = LEFT(@email, 7);
SET @emailId= MID(@email, 1, @characterInEmail - 1);
SELECT @emailId AS 'Email ID';

SET @emailProvider = MID(@email, @characterInEmail + 1, 5);
SELECT @emailProvider AS 'Email Provider';

-- 2) Use INSTR and MID functions to return the email id of customer table
SELECT
	Email,
	MID(Email, 1, INSTR(Email, '@') - 1) AS 'Email ID'
FROM CLIENTES
WHERE Email != 'null'
ORDER BY Email;