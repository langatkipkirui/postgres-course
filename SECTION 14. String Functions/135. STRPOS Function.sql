-- 135 STRPOS function

-- function that is used to find the position, from where the substring is being 
-- matched within the string

STRPOS(<string>, <string>)

SELECT STRPOS('World Bank', 'Bank');


-- Lets display the first_name, last_name and the position of a specific substring
-- 'on' which must exists within the column last_name from directors

SELECT 
	first_name,
	last_name
FROM directors
WHERE strpos(last_name, 'on')>0;

/* Difference between STRPOS and POSITION functions
	1. Those functions do the exactly same thing and difer only in syntax.
	Documentation  for strpos() says:
	Location of specified substring(same as position(substring in string)), but 
	note the reversed argument order)

	2. Reason why they both exist and differ only in syntax is that 
	POSITION(str IN str2) is defined by ANSI SQL standard

	If PostgreSQL had only strpos() it wouldn't be able to run ANSI SQL queries
	and scripts.
*/










