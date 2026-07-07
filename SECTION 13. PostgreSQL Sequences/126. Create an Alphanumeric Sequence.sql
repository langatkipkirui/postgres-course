-- 126. Create an Alphanumeric Sequence
/*
By default sequences are only consist of numbers.
First, lets see how normally sequence are worked
*/
-- 1. Create a table with serial data type for sequence
CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY,
	contact_name VARCHAR(150)
)

-- 2. Lets insert some data, and see the sequence
INSERT INTO contacts (contact_name) VALUES('John Parker')
RETURNING *

-- 3. Drop Table
DROP TABLE contacts

-- 4. Create a sequence
CREATE SEQUENCE table_seq

-- 5. Create a table and use DEFAULT to add an alphanumeric sequence
-- ID1, ID2, ID3

CREATE TABLE contacts(
	contact_id TEXT NOT NULL DEFAULT('ID' || nextval('table_seq')),
	contact_name VARCHAR(150)
);


-- 6. Alter sequence and attach to table column
ALTER SEQUENCE table_seq OWNED BY contacts.contact_id

-- 7. Insert some data
INSERT INTO contacts(contact_name) VALUES ('Peter')

-- Lets view the data
SELECT * FROM contacts












