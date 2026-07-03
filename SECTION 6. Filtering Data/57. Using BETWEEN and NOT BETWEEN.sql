-- Using BETWEEN and NOT BETWEEN 

-- An operator to match a value against a range of values
--value BETWEEN low and high
 -- If the value is greater than or equal to the low value and less than
 -- or equal to the high value, the expression returns true, otherwise 
 -- it returns false

-- a) BETWEEN
-- 1. Get all the actors where date_of_birth is between 1991 and 1995
SELECT * FROM actors
 	WHERE date_of_birth BETWEEN '1991-01-01' AND '1995-12-31'
ORDER BY date_of_birth

-- 2. Get all movies released between 1998 and 2002
SELECT * FROM movies
 WHERE release_date BETWEEN '1998-01-01' AND '2002-01-01'
ORDER BY release_date 

-- 3. Get all the movies where domestic revenues are between 100 and 300
SELECT * FROM movies_revenues
	WHERE revenue_domestic BETWEEN 100 AND 300
ORDER BY revenue_domestic

-- 4. Get all  movies where movie_length is between 100 and 200
SELECT * FROM movies
WHERE 
	movie_length BETWEEN 100 AND 200
ORDER BY movie_length

-- b) NOT BETWEEN 
-- 1. Get all english movies where movie_length is not between 100 and 200
SELECT * FROM movies
WHERE
	movie_length NOT BETWEEN 100 AND 200
ORDER BY movie_length

-- When we use NOT BETWEEN it is the same as:
SELECT * FROM movies
WHERE
	movie_length <= 100 OR movie_length >= 200
ORDER BY movie_length

-- Also when we use BETWEEN it is the same as:
SELECT * FROM movies
WHERE
	movie_length >= 100 AND movie_length <= 200
ORDER BY movie_length














 