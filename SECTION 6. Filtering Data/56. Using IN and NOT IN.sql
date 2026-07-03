-- 56. Using IN and NOT IN
-- In and NOT IN are used to check if a vale matches or not matches in a list
-- returns true 

-- value IN (value1, value2, ...) 
-- value NOT IN (value1, value2, ...) 

-- The IN operator returns true if the value matches any value in the list i.e value1, value2 etc
-- The NOT IN operator returns true if the value does NOT matches any value in the list i.e value1, value2,..

-- Get all the movies for english, chinese and japnese languages
-- Alternative way using WITH and OR operators

SELECT * FROM movies
WHERE 
	movie_lang='English'
	OR movie_lang='Japanese'
	OR movie_lang='Chinese'
ORDER BY movie_lang

-- 1. Instead of using OR a couple of times we can use IN for example
SELECT * FROM movies
WHERE
	movie_lang IN ('English', 'Chinese', 'Japanese')
ORDER BY movie_lang

-- 2. Get all the movies where age certificate is 18 and PG type
SELECT * FROM movies
WHERE 
 age_certificate IN ('18','PG')
ORDER BY age_certificate ASC

-- 3. Get all movies where directors id is not 13 or 10
SELECT
*
FROM directors
WHERE 
	director_id NOT IN ('13', '10')
ORDER BY director_id
-- for numeric data we can use single quotes or no quotes e.g.
SELECT
*
FROM directors
WHERE 
	director_id NOT IN (13,10)
ORDER BY director_id

-- 4. Get all the actors where actor_id is not 1,2,3,4 
SELECT * FROM actors
WHERE 
	actor_id NOT IN ('1','2','3','4')
ORDER BY actor_id



















