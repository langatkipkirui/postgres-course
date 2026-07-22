 -- LENGTH function

-- length return the number of characters or the number of bytes of a string

LENGTH(string)

SELECT LENGTH('Amazing PostgreSQL');

SELECT LENGTH (CAST(100122 AS TEXT));

SELECT LENGTH('What is the length of this string?')



SELECT char_length('')
SELECT char_length(' ')

SELECT char_length(NULL)


SELECT 
	first_name||' '||last_name AS full_name,
	LENGTH(first_name|| ' ' || last_name ) AS full_name_length
FROM directors
ORDER BY
	2 DESC;











