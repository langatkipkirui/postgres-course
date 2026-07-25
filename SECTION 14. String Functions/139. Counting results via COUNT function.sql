-- 139. Counting results via COUNT function

/*
SELECT COUNT(*) FROM tablename
SELECT COUNT(columnname) FROM tablename
*/

-- 1. Count all records
-- Count total numbers of movies

SELECT count(*) from movies;

SELECT * FROM movies;

-- 2. count all records of a specific column
SELECT COUNT(movie_length) FROM movies;

--3. Using COUNT with DISTINCT
-- count all distinct movie languages
-- WITHOUT DISTINCT clause
SELECT 
 	COUNT(movie_lang)
FROM movies;


-- 4. WITH DISTINCT clause
-- COUNT(DISTINCT(columname))

SELECT 
	COUNT(DISTINCT(movie_lang))
FROM movies;

-- COUNT all DISTINCT directors
SELECT 
	COUNT (DISTINCT(director_id))
FROM movies;

-- COUNT all the english movies
-- WHERE clause
SELECT
	COUNT(*)
FROM movies
WHERE LOWER(movie_lang)='english';

-- ALL NULL values are ignored in count
SELECT 
 	COUNT(revenue_id)
FROM movies;








