-- 60. Concatenation techniques
-- To concatenate two or more strings into one, you use the string concatenation operator ||

-- 1. Combining columns together 
-- SELECT 'string1' || 'string2' AS new_string

-- 2. Combining columns together
-- SELECT CONCAT(column1, column2) AS new_string;

-- 3. Combining columns together using CONCAT_WS
-- CONCAT_WS function that concatenates strings into one separated by a particular 
-- separator
-- SELECT CONCAT_WS('|', column1, column2) AS new_string

-- 1. Lets combine string 'Hello' and 'world'
SELECT 'Hello' || 'World' AS new_string
-- Adding a space btw the two words
SELECT 'Hello' ||' '|| 'World' AS new_string

-- 3. Lets combine  actor first and last name as 'Actor Name'
SELECT 
	CONCAT(first_name || ' ' || last_name) AS "Actor Name"
FROM actors
ORDER BY first_name

-- 4. Lets print first name, last name and date of birth of all actors separated by comas
SELECT 
	CONCAT_WS(', ',first_name, last_name, date_of_birth) AS "Actor Name"
FROM actors
ORDER BY first_name

-- 4. Lets print first name, last name and date of birth of all actors with first name +
-- last name and date of birth being separated by 'was born on'
SELECT 
	CONCAT(first_name || ' ' || last_name || ' ' || 'was born on' || ' ' || date_of_birth) AS "Actor Info"
FROM actors
ORDER BY first_name


















