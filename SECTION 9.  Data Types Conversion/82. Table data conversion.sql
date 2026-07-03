-- 82. Table data conversion

-- 1. Lets create a table called 'ratings' with initial data as characters
CREATE TABLE ratings(
	rating_id SERIAL PRIMARY KEY, 
	rating VARCHAR (1) NOT NULL
);


-- 2. Lets insert some data
INSERT INTO ratings(rating)
VALUES
('A'),
('B'),
('C'),
('D');


-- 3. Now say the business requirements chnages and now they want all the
-- ratings to be numeric

-- So lets add some numeric integer data
INSERT INTO ratings(rating)
VALUES
('1'),
('2'),
('3'),
('4');

SELECT * FROM ratings

-- 4. Now, we have to convert all the values in the rating column into integers
-- We will use the CAST to change all non-numeric data to integers

SELECT 
	rating_id,
	CASE
		WHEN rating~E'^\\d+$' THEN
			CAST (rating AS INTEGER)
		ELSE
			0
		END as rating
FROM 
ratings;





