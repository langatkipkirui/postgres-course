-- 89. CREATE DOMAIN - Create a postal code validation data type

-- Example - 'ke-postal-code' to check for valid Kenya postal code format

-- 1. Lets create a domain
CREATE DOMAIN ke_postal_code AS TEXT
CHECK (
	VALUE~'^\d{5}$'
	OR VALUE~'^\D{5}-\d{4}$'
)


-- 2. Lets create a sample table
CREATE TABLE addresses(
	address_id SERIAL PRIMARY KEY,
	postsal_code ke_postal_code UNIQUE
);

/*
ALTER TABLE addresses
RENAME COLUMN postsal_code to postal_code;
*/

-- 3. Lets view the table
SELECT * FROM addresses

-- 4. Lets insert the data
INSERT INTO addresses (postaL_code)
VALUES ('20213');

-- 5. Lets insert value out of constraint
INSERT INTO addresses (postaL_code)
VALUES ('20213-20213');




























