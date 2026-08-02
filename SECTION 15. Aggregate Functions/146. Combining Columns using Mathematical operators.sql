-- 146. Combining Columns using Mathematical operators
/*
Addition 		: +
Subtraction 	: -
Division 		: /
Multiplication	: *
Modulus/Rem		: %
*/

SELECT 2+10 AS additon
SELECT 10-2 AS subtraction
SELECT 10/5 AS division
SELECT 11/5::numeric(10,2) AS division
SELECT 2.56*10.534 AS multiplication;
SELECT 15.3%2 AS modulus 


-- 3. Can we combine the table columns?
-- Get total revenues for all movies from movies_revenues table

-- Lets first get all movies data
SELECT * FROM movies_revenues;


SELECT 
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic+revenues_international) AS "Total Revenues"
FROM movies_revenues;

-- Lets order by the highest revenues movies
SELECT 
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic+revenues_international) AS "Total Revenues"
FROM movies_revenues
ORDER BY 4 DESC;






















