-- LEC 44. SELECTING DISTINCT VALUES
/*
syntax
SELECT DISTINCT column_name FROM table_name
*/
-- 1. Lets get all the records from the movies table
SELECT * FROM movies

-- 2. Get movie_lang from the movies table
SELECT 
	movie_lang
FROM movies

-- 3. Get unique movie_lang
SELECT 
	DISTINCT movie_lang
FROM movies
-- 3.1 we can also sort them from ascending 
SELECT 
	DISTINCT movie_lang
FROM movies
ORDER BY movie_lang;

-- 4. Get unique director_id
-- 4.1 get all the director_id's
SELECT director_id FROM movies
-- 4.2 Get unique id's
SELECT 
	DISTINCT director_id
FROM movies
-- 4.3 we can also sort them in asc and desc - let use DESC
SELECT 
	DISTINCT director_id
FROM movies
ORDER BY 1;

-- 5. Getting multiple unique values a.g movie_lang, director_id
SELECT 
	DISTINCT movie_lang, director_id
FROM movies
ORDER BY 1;

-- 6. Get all unique records in movies table
SELECT 
	DISTINCT *
FROM movies
ORDER BY movie_name;





















