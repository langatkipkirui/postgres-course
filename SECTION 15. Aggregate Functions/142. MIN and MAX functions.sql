-- 142. MIN and MAX functions

-- MIN - Minimum, MAX - Maximum


-- SELECT MIN(colname) FROM tablename
-- SELECT MAX(colname) FROM tablename

-- 1. What is the longest movie in movies table

SELECT
	movie_length
FROM movies
ORDER BY movie_length DESC;


SELECT
	MAX(movie_length)
FROM movies;


-- 2. What is the shortest length movie in movies table
SELECT
	 movie_length
FROM movies
ORDER BY movie_length ASC;

SELECT
	MIN(movie_length)
FROM movies;


-- 3. What is the longest length movie in movies table within all english 
-- based language
SELECT 
	MAX(movie_length)
FROM movies
WHERE
	 movie_lang='English';


SELECT 
	*
FROM movies
WHERE
	 movie_lang='English'
ORDER BY movie_length desc;

-- 4. What is the latest release movie in english language
SELECT * FROM movies
WHERE movie_lang='English'
ORDER BY release_date desc


SELECT MAX(release_date) FROM movies
WHERE movie_lang='English'

-- 5. What was the first movie release in chinese language
SELECT * FROM movies
WHERE movie_lang='Chinese'
ORDER BY release_date ASC;


SELECT MIN(release_date) FROM movies
WHERE movie_lang='Chinese'

-- 6. Can we use MIN and MAX for text data types (VARCHAR etc.)
-- First get all movies records order by movie_name
SELECT * FROM movies
ORDER BY movie_name ASC;

-- lets use MAX fn on movie_name;

SELECT MAX(movie_name) FROM movies


-- lets use MIN fn on movie_name;

SELECT MIN(movie_name) FROM movies









