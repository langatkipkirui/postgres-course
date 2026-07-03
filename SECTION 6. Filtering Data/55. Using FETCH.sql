-- 54. Using FETCH  

-- FETCH clause to retrieve a portion of rows returned by a query
-- FETCH clause was introduced in SQL 2008
-- FETCH clause is functionality equivalent to LIMIT clause.
-- You should use the FETCH clause because it follows the standeard SQL.


/*
OFFSET start {ROWS | ROWS}
FETCH {FIRST | NEXT} {row_count} {ROW | ROWS} ONLY
*/

-- The OFFSET starts is an integer that must be zero or positive. By default start is 0 
--  In case the start is greater than the number of rows in the result set, no rows are
-- returned 

-- 1. Get the first row of movies from  table
SELECT * FROM movies
FETCH FIRST 1 ROW ONLY

-- 2. Get the first 5 rows of movies from  table
SELECT * FROM movies
FETCH FIRST 5 ROW ONLY

-- 3. Get the top 5 biggest movies by movie length
SELECT * FROM movies
ORDER BY movie_length DESC
FETCH FIRST 5 ROW ONLY

-- 4. Get the 5 oldest american directors
SELECT * FROM directors
ORDER BY date_of_birth ASC 
FETCH FIRST 5 ROW ONLY


-- 5. Get the top 10 youngest female actors
SELECT * FROM actors
	WHERE gender='F'
	ORDER BY date_of_birth DESC
FETCH FIRST 10 ROW ONLY

-- 6. Get the first 5 movies from the 5th record onwards by the long movie length

SELECT * FROM movies
ORDER BY movie_length DESC
FETCH FIRST 5 ROW ONLY OFFSET 5














