-- 143. Using GREATEST and LEAST functions

/*
GREATEST(list)

LEAST(list)
*/

-- 1. The GREATEST and LEAST functions select the largest or 
-- smallest values from a list of any expressions.
SELECT GREATEST(201,23,421,345);


SELECT LEAST(-10,230,5);

-- 2. The expressions must all be convertible to a common data
-- type which will be the type of the result 
-- Can we compare INT nad VARCHAR in a list?

SELECT GREATEST('A','B','C');


SELECT GREATEST(1,'B','C',2,3); --the list should be the same data
-- type

-- Find the greatest and least revnues per each movie
SELECT
	movie_id,
	revenues_domestic,
	revenues_international,
	GREATEST(revenues_domestic,revenues_international) 
	AS Greatest,
	LEAST(revenues_domestic,revenues_international) 
	AS Least
FROM movies_revenues;












