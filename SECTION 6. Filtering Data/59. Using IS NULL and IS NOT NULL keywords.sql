-- 59. Using IS NULL and IS NOT NULL keywords

-- IS NULL operator to check if a value is null
-- IS NOT NULL operator to check if a value is not null
-- NULL means missing information or not applicable
-- Returns true or false 

-- IS NULL in WHERE clause would return only values that were null
-- IS NOT NULL in WHERE clause would return only values that were not null

/*
syntax
SELECT column_list FROM table_name 
WHERE column_name IS NULL

SELECT column_list FROM table_name 
WHERE column_name IS NOT NULL
*/


-- 1. Find list of actors with missing birth date
SELECT * FROM actors
	WHERE date_of_birth IS NULL
ORDER BY date_of_birth

-- 2. Find the list of actors with missing birth date or missing first name
SELECT * FROM actors
	WHERE date_of_birth IS NULL 
	OR first_name IS NULL
ORDER BY first_name

-- 3. Get the list of movies where the domestic revenues is null
SELECT * FROM movies_revenues
WHERE revenue_domestic IS NULL

-- 4. Get the list of movies where either domestic and international revenues is NULL
SELECT * FROM movies_revenues
	WHERE revenue_international IS NULL 
 	AND revenue_domestic IS NULL
ORDER BY movie_id

-- IS NOT NULL
-- 5. Get the movies where domestic revenues are not null
SELECT * FROM movies_revenues
WHERE revenue_domestic IS NOT NULL 

-- 6. Get the movies where domestic revenues AND international revenue are not null
SELECT * FROM movies_revenues
	WHERE
	revenue_domestic IS NOT NULL 
	AND revenue_international IS NOT NULL
ORDER BY revenue_international

-- 7 How avout we use the following instead of IS NULL
-- 7.1 = NULL
SELECT * FROM actors 
WHERE date_of_birth = NULL

-- 7.2 = 'NULL'
SELECT * FROM actors 
WHERE date_of_birth = 'NULL'

-- 7.3 = ''
SELECT * FROM actors 
WHERE date_of_birth = ''

-- 7.4 = ""
SELECT * FROM actors 
WHERE date_of_birth = ""

-- 7.4 = ' '
SELECT * FROM actors 
WHERE date_of_birth = ' '

-- The first method returns incorrect results and other methods throws errors
-- This means we should use IS NULL when checking is values are null










