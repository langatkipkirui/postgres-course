-- 54. Using LIMIT to limit output records
-- syntax
/*
SELECT 
	column_list
FROM table_name
ORDER BY column_name
LIMIT number
*/
-- 1. Get the top 5 biggest movies by movie_length
SELECT * FROM movies
ORDER BY movie_length DESC
LIMIT 5

-- 2. Get the top 5 oldest american directors
SELECT * FROM directors
WHERE nationality='American'
ORDER BY date_of_birth
LIMIT 5

-- 3. Get the top 10 youngest female actors
SELECT * FROM actors
	WHERE gender='F'
ORDER BY date_of_birth DESC
LIMIT 10

-- 4. Get the top 10 most profitable movies
SELECT * FROM movies_revenues
ORDER BY revenue_domestic DESC NULLS LAST
LIMIT 10

-- 5. Get the top 10 least profitable movies
SELECT * FROM movies_revenues
ORDER BY revenue_domestic ASC
LIMIT 10

-- 6. List 5 films starting from the fourth one ordered by movie_id
SELECT * FROM movies
ORDER BY movie_id
LIMIT 5 OFFSET 4;

-- 7. List all top 5 movies after the top 5 highest paying profit movies
SELECT * FROM movies_revenues
ORDER BY revenue_domestic DESC NULLS LAST
LIMIT 5 OFFSET 5;





















