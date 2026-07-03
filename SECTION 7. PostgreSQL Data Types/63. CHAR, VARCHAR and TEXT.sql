-- 63. CHAR, VARCHAR and TEXT
/*
1. Characters strings types are general purpose types suuitable for:
	-text
	-numbers
	-symbols
2. Three main types of CHARACTER data:

	Character Types						   	   Notes
	----------------     					  --------
	CHARACTER(n), CHAR(n)		 			fixed-length, blank padded
	CHARACTER VARYING(n), VARCHAR(n)		variable-length with length limits
	TEXT, VARCHAR							variable unlimited length
	
3. Where n is the number of characters that column holds. If no value specified the default is 1

4. If the exessive characters are all spaces, PostgreSQL truncates the spaces to the maximum length (n)

*/

/*
CHARACTER(n), CHAR(n)
	-char(10) will store 10 character length
	- However if you insert less than 10 characters, PostgreSQL will pads the rest of the column with spaces
*/

-- So if you have less characters PostgreSQL will pads the rest of the column with spaces
SELECT CAST('Kevin' AS CHARACTER(10)) AS "Name" --"Kevin     "
-- The same but different way:
SELECT 'Kevin'::CHAR(10) as "NAME"
-- But if you have excess characters PostgreSQL truncates it to fixed no letters
SELECT CAST('Kevin Kipkirui' AS CHARACTER(10)) AS "Name"

-- char and character are quiet not different:
SELECT
 CAST('Kevin' AS CHARACTER(10)) AS "Name1",  --"Kevin     "
 CAST('Kevin' AS CHAR(10)) AS "Name2" --"Kevin     "


/*
CHARACTER VARYING(n), VARCHAR(n)		variable-length with length limits
---------------------------------------------------------------------------
	1. Useful if the entries in a column can vary in length but you don't want Postgres to
	pad the field with blanks

	2. Stores exactly the number of characters provided. Save space

	3. No default value exist for this type

	4. n here means maximum number of characters

*/

SELECT 'Kevin'::VARCHAR(10) as "Name"  -- "Kevin"
-- Note that n here means maximum number of characters

-- same applies to character varying
SELECT 'Kevin'::CHARACTER VARYING(10) as "Name"  -- "Kevin"

-- There no default value exist for this type:
SELECT 'Kevin'::VARCHAR as "Name"  -- "Kevin"
SELECT 'Kevin'::CHARACTER VARYING as "Name"  -- "Kevin"

-- Both of these method accepts any kind of data, even spaces you specify
SELECT 'Kevin 123 $& '::CHARACTER VARYING(20) -- "Kevin 123 $& "
SELECT 'Kevin 123 $& '::VARCHAR(20) -- "Kevin 123 $& "

-- NOTE: if you are not sure of what kind of data you are gonna put into a field use VARCHAR or 
-- CHARACTER VARYING as a data type for example someone username: Kevin777


/*
	TEXT, VARCHAR							variable unlimited length
	-----------------------------------------------------------------

	1. varibale-length column type

	2. unlimited length (per PostgreSQL it say max approx 1 GB)

	3. Not part of SQL standard, but similar types available in Microsoft SQL and MySQL etc
	
*/

-- Example
SELECT 'About elephants: Elephants are the largest living land animals. Three living species are currently recognised: the African bush elephant (Loxodonta africana), the African forest elephant (L. cyclotis), and the Asian elephant (Elephas maximus)'::TEXT AS "Elephant"

-- Lets create a table for all characters

CREATE TABLE table_characters(
 col_char CHAR(10),
 col_varchar VARCHAR(10),
 col_text TEXT
)

SELECT * FROM table_characters

-- Lets insert data into the table_charcters
INSERT INTO table_characters(col_char, col_varchar, col_text)
VALUES 
 				('ABC', 		 'ABC',    'ABC'),
-- results      "ABC       "    "ABC"     "ABC"
 				('xyz',			 'xyz',    'xyz');
-- results		"xyz       " 	 "xyz" 		"xyz"











