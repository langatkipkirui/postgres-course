-- 68. Date data type

/*
1. Store date values

2. Uses 4 bytes to store date value

3. By default it uses the format YYYY-MM-DD

4. Some good useful keywords
	CURRENT_DATE		Storea the current date

5. column_name Date

*/


-- Lets create a sample table with a Date type column

CREATE TABLE table_dates(
id SERIAL PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
hired_Date DATE NOT NULL,
add_date DATE DEFAULT CURRENT_DATE
)



-- Lets insert some data into it
INSERT INTO table_dates(employee_name, hired_date)
VALUES 
('Kevin', '2021-01-07'),
('Irma', '2018-05-20'),
('Zayn', '2015-04-09')

SELECT * FROM table_dates

-- Other functions
SELECT CURRENT_DATE

-- IF YOU NEED THE CUREENT FULL TIME AND DATE:
SELECT NOW()




















