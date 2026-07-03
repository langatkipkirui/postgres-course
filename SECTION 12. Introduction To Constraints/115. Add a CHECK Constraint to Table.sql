-- 115. Add a CHECK Constraint to Table
-- Define new CHECK constraints for new tables

-- 1. Lets create a new table
CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	birth_date DATE NOT NULL CHECK (birth_date > '01/01/1900'),
	joined_date DATE NOT NULL CHECK(joined_date > birth_date),
	salary NUMERIC NOT NULL CHECK (salary>0)
)

-- 2. Lets insert some data into the table
INSERT INTO staff (first_name,last_name, birth_date, joined_date, salary)
VALUES
('Kevin','Langat', '29/04/2004', '20/06/2010', 2000)

-- 3. Lets view the data of the table
SELECT * FROM staff

-- 4. Lets try to insert data that doesn't meet the check requirements
INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary)
VALUES
('Vladmir', 'Slasknova', '02/05/1899', '25/12/1980', 4500 )

/*
we get the following err:

ERROR:  new row for relation "staff" violates check constraint "staff_birth_date_check"
Failing row contains (2, Vladmir, Slasknova, 1899-05-02, 1980-12-25, 4500). 
*/

-- 5. Lets try and update a field where check is enforced with values that doesn't meet the 
-- requirement
UPDATE staff
SET salary = -400
WHERE staff_id=1

/*
we get the following err:
ERROR:  new row for relation "staff" violates check constraint "staff_salary_check"
Failing row contains (1, Kevin, Langat, 2004-04-29, 2010-06-20, -400). 
*/
























