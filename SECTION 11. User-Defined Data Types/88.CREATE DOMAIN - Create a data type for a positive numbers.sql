-- 88.CREATE DOMAIN - Create a data type for a positive numbers
-- Example 'positive_numeric' domain with a positive numeric i.e > 0

-- 1 Lets create a domain
CREATE DOMAIN positive_numeric INT NOT NULL CHECK (VALUE > 0)

-- 2. Lets create samle table
CREATE TABLE sample(
	sample_id SERIAL PRIMARY KEY,
	value_num positive_numeric
);

-- 3. Lets insert into sample with positive number
INSERT INTO sample (value_num)
VALUES(10)

-- 4. Lets view the data in the table
SELECT * FROM sample

-- 5. Lets try and insert a negative value into the table
INSERT INTO sample(value_num)
VALUES(-5)
















