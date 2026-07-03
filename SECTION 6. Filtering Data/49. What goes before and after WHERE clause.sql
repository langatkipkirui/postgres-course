-- 49. WHAT GOES BEFORE AND AFTER CLAUSE
-- 1. Can we use WHERE before FROM?
SELECT *
WHERE movie_lang='English'
 FROM movies
-- we cannot use WHERE before from
-- the correct way:
SELECT *
 FROM movies
WHERE movie_lang='English'
-- so WHERE can only be used after FROM

-- 2. Can we use WHERE after ORDER BY
SELECT * FROM movies
ORDER BY movie_lang
WHERE age_certificate='15'

-- this means WHERE can only be used before ORDER BY
SELECT * FROM movies
	WHERE age_certificate='15'
ORDER BY movie_lang