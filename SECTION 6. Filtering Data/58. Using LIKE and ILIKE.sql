-- LIKE and ILIKE operators 

-- Operators to query data using 'pattern matchings'
-- Returns true or false
-- Both let you search for patterns in strings by using two special characters:

-- % Percent sign (%) matches any sequence of zero or more characters
-- _ Underscore sign (_) matches any single character

-- value LIKE pattern
-- value ILIKE pattern

-- 1. Full character search
SELECT 'hello' LIKE 'hello'

-- 2. Partial character search using '%'
SELECT 'hello' LIKE 'h%'

SELECT 'hello' LIKE '%e%'

SELECT 'hello' LIKE 'hell%'

SELECT 'hello' LIKE '%ll'

-- 3. Single charcter using the '_'

SELECT 'hello' LIKE '_ello'

-- 4. Checking the occurence of search using '_'
SELECT 'hello' LIKE '__ll_'

-- 5. Using % and _ together
SELECT 'hello' LIKE '%ll_'

-- 6. Get all actors names where first name starting with 'A'
SELECT * FROM actors
	WHERE first_name LIKE 'A%'
ORDER BY first_name

-- 7. Get all actors name where last name is ending with 'a'
SELECT * FROM actors
	WHERE last_name LIKE '%a'
ORDER BY last_name

-- 8. Get all the actors names where the first name with 5 characters only
SELECT * FROM actors
	WHERE first_name LIKE '_____'
ORDER BY first_name

-- 9. Get all the actors names where first name contains 'l' on the second place
SELECT * FROM actors
	WHERE first_name LIKE '_l%'
ORDER BY first_name

-- 10. Is LIKE case sensitive?
-- Get record from actors where actor name starts with 'To'
SELECT * FROM actors
	WHERE first_name LIKE 'To%'
ORDER BY first_name

-- > using the lower case on the same
SELECT * FROM actors
	WHERE first_name LIKE 'to%'
ORDER BY first_name
-- So no record are returned meaning that LIKE is case sensitive
-- So the solution to this is ILIKE which means Insensitive LIKE-> which is case
-- insensitive
SELECT * FROM actors
WHERE first_name ILIKE 'to%'
ORDER BY first_name







