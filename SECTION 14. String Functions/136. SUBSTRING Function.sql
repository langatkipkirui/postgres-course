-- 136 SUBTRING Function
/*
1. function allows you to extract a substring from a string.

2. substring(string [from start_position] [for length])
   SUBSTRING (string, start_position, length)
   
3. The first position in string always start with 1.

*/

SELECT substring('What a wonderful nature' from 1 for 8 );

SELECT substring('What a wonderful world' from 8 for 10);

SELECT substring('What a wonderful world' for 10);

SELECT 
	first_name,
	last_name,
	SUBSTRING(first_name, 1,1) AS initial
FROM 
	directors
ORDER BY 
	last_name;


