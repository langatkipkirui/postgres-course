-- LEC 38. ASSIGNING COLUMN ALIAS TO AN EXPRESSION
-- 1. Lets select the first_name and last_name from the actors table 
SELECT first_name, last_name FROM actors

-- 2. Can we combine the first _name and last_name together and make them Full Name
--	yes we can. Using expresions
-- We will use || as the concatenating operator

SELECT first_name || last_name FROM actors;

-- 3. To add a space between the first_name and last_name we add '' between the pipes
SELECT first_name || ' ' || last_name FROM actors;

-- 4. To  add the column we use AS also;
SELECT
	first_name || ' ' || last_name AS "Full Name"
FROM actors;
-- 5. Can i just use expressions to get the output without using table column?
-- yes you can

SELECT 10/5 AS "Calc";