-- 91. CREATE DOMAIN - Create a Enum or Set of Values Domain Data Type
-- 1. Lets create a domain to enumarate colors
CREATE DOMAIN valid_color VARCHAR(10)
CHECK (VALUE IN ('red','blue', 'green'))

-- 2. Lets create a sample table
CREATE TABLE colors(
	color_id SERIAL PRIMARY KEY,
	color valid_color
)

-- 3. Lets view the table
SELECT * FROM colors

-- 4. Lets insert some data into the table
INSERT INTO colors (color)
VALUES('green')

-- 5. Lets insert a color out of range
INSERT INTO colors (color)
VALUES ('yellow')


-- Another example is a enum to add disable, enable and temp status to users
CREATE DOMAIN user_status VARCHAR(10)
CHECK(VALUE IN('enable','disable', 'temp'))

-- Lets create a table
CREATE TABLE users_check(
	user_id SERIAL PRIMARY KEY,
	user_status user_status
)

-- Lets insert some data into it
INSERT INTO users_check (user_status)
VALUES ('enable')

-- Lets view the table
SELECT * FROM users_check

-- Lets insert data that is out os range
INSERT INTO users_check (user_status)
VALUES ('uknown')









