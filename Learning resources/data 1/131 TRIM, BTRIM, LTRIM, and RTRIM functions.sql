-- 131 TRIM, BTRIM, LTRIM, and RTRIM functions
/*
 TRIM removes the longest string that contains a sepcific character from a string.
 LTRIM removes all characters, spaces by default, from the beginning of a string.
 RTRIM removes all characters, spaces by default,  from the end of the string.
 BRIM is the combination of the LTRIM() an RTRIM functions
*/

-- The TRIM() function removes the longest string that contains a specific 
-- character from a string
/*
syntax
TRIM(LEADING | TRAILING | BOTH) [characters] FROM string

TRIM(LEADING FROM string)

TRIM(TRAILING FROM string)

TRIM(BOTH FROM string);

LTRIM(string, [character]);

RTRIM(string, [character]);

BTRIM(string, [character]);
*/


SELECT TRIM(
	LEADING FROM '   Amazing PostgreSQL'
),
	TRIM( TRAILING FROM 'Amazing PostgreSQL   '
),
	TRIM(' Amazing PostgreSQL  ');


"Amazing PostgreSQL"	"Amazing PostgreSQL"	"Amazing PostgreSQL"


-- Removing say leading zero (0) from a number
SELECT TRIM(
	LEADING '0'
	FROM CAST(000123456 AS TEXT)
);

-- LTRIM
SELECT LTRIM('yummy','y');
SELECT LTRIM('   Amazing PostgreSQL');

"Amazing PostgreSQL"

-- RTRIM
SELECT RTRIM('yummy','y');
SELECT RTRIM('Amazing PostgreSQL   ');

"Amazing PostgreSQL"

-- BTRIM
SELECT BTRIM('yummy','y');
SELECT BTRIM('  Amazing PostgreSQL  ');

"Amazing PostgreSQL"






