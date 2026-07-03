-- 79. What is a data type conversion
/*
	1. A data coverted from its ORIGINAL data type to ANOTHER data type, it is 
	called 'Type Conversion'

	2. Two type of conversions 
		implicit conversion : data conversions is done AUTOMATICALLY

		Explicit conversion : data conversion is done via  'conversion functions'
		 e.g CAST or ::
*/
-- 3. Type conversion examples
SELECT * FROM movies

-- integer =  integer
SELECT * FROM movies
WHERE movie_id  = 1  -- Same data type, so no conversion

-- integer =  string
SELECT * FROM movies
WHERE movie_id  = '1'  -- PostgreSQL automatically do the conversion here i.e 
-- Implicit coversion 

-- 4. What if we want explicit conversion
SELECT * FROM movies
WHERE movie_id = INTEGER '1'














