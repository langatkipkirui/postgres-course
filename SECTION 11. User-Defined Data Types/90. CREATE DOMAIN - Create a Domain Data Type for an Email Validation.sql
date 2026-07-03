-- 90. CREATE DOMAIN - Create a Domain Data Type for an Email Validation

-- 1. Lets create the domain
CREATE DOMAIN valid_email VARCHAR(150)
CHECK (VALUE ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')

-- 2. Lets create a table
CREATE TABLE client_email(
	client_email_id SERIAL PRIMARY KEY,
	client_email valid_email
)

-- 3. Lets view the data in the table
SELECT * FROM client_email

-- 4. Lets insert some data into the table
INSERT INTO client_email(client_email)
VALUES('a@b.com')

-- 5. Lets insert some invalid data into the table
INSERT INTO client_email(client_email)
VALUES('abc@com')




















