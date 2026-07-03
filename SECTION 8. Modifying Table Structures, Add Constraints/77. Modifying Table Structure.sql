-- 77. Rename Table Structure

-- 1. Rename Table
ALTER TABLE persons
RENAME TO users

-- 2. Rename a Column  
ALTER TABLE users
RENAME COLUMN age TO person_age;

-- 3. Let's view the table
SELECT * FROM users

-- 4. Drop a column
ALTER TABLE users
DROP COLUMN age

-- 5. Add column back again
ALTER TABLE users
ADD COLUMN nationality VARCHAR(10)

-- 6. Change the data type of a column
ALTER TABLE users
ALTER COLUMN person_age TYPE int
USING person_age::integer

-- 7. Changing the data type back to VARCHAR
ALTER TABLE users
ALTER COLUMN person_age TYPE VARCHAR(10)

-- 8. Set default values of a column 
ALTER TABLE users
ADD COLUMN is_enable VARCHAR(1)

-- To set the deafult:
ALTER TABLE users
ALTER COLUMN is_enable SET DEFAULT 'Y'

-- 9. Let's Insert some data into the table
INSERT INTO users(first_name, last_name, person_age, email, profession, nationality, is_enable)
VALUES ('Kevin', 'Langat', '21', 'kevinlangat43@gmail.com', 'Blockchain dev', 'Kenyan', 'Y')


DELETE FROM users
WHERE person_id = '1'












