-- 73. HSTORE data type

/*
	1. hstore is a data type that store data into key-value pairs

	2. The hstore module implements the hstore data type

	3. The keys and values are just text strings only
*/

-- 1. Lets install hstore extensions first

CREATE EXTENSION IF NOT EXISTS hstore;

-- 2. Lets create a sample table

CREATE TABLE table_hstore(
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	book_info hstore
);

-- 3. Lets view the data

SELECT * FROM table_hstore

-- 4. Lets insert data into table_hstore
INSERT INTO table_hstore(title, book_info)
VALUES (
	'Chozi La Heri',
	'
	"publisher" => "Longhorn Publishers",
	"country_of_publish" => "Kenya",
	"author" => "Assumpta K. Matei"
	'
)


-- 5. Lets view the datain the table_hstore
SELECT * FROM table_hstore

-- 6. Lets query specific hstore value
-- -> operator
SELECT 
book_info -> 'publisher' as "Publisher",
book_info -> 'author' as "Author"
FROM table_hstore









