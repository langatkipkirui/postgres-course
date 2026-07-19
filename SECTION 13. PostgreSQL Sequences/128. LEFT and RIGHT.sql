-- 128. LEFT and RIGHT

-- 1. Postgresql LEFT function returns the first n characters in the string
-- LEFT (string, n)
SELECT LEFT ('ABCDE', 2)

-- Notes: it does not truncate spaces and also it returns all the values if the n
-- exceed the characters of values present


-- 2. if n is -2, therefore, the LEFT() function return all character except the 
-- last 2 characters
SELECT LEFT ('ABCDE', -2)

-- 3. Get initial for all suppliers name
SELECT 
	LEFT(company_name, 1) AS initial,
	COUNT(*) as total_initials
FROM suppliers
GROUP BY 1
ORDER BY 1;

-- 4. PostgreSQL RIGHT() function returns the last n characters in the string 
RIGHT(string, n)

SELECT RIGHT('ABCDE', 1);
SELECT RIGHT('ABCDE', 2);
SELECT RIGHT('ABCDE', 3);

-- 5. function returns all character except for the first character
SELECT RIGHT('ABCDE', -2);

-- 6. Find all suppliers where the contact_name ends with 'n'
SELECT company_name, contact_name
FROM suppliers
WHERE RIGHT(contact_name, 1)='n'













