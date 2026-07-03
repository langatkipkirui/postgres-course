-- 51. CAN WE USE COLUMN ALIASES WITH WHERE?
SELECT * FROM actors

-- 1. Example
SELECT 
	first_name,
	last_name AS surname
FROM actors
WHERE
	surname = 'Andrews'
;
--> So we cannot use the aliases in the WHERE clause
-- If you use the colimn aliases in the SELECT clause, you cannot use them in the WHERE clause
