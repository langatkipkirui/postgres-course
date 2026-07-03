-- 99. Update an ENUM Data in Production Server
-- 1. Lets create status enum
CREATE TYPE status_enum AS ENUM ('queued', 'waiting', 'running', 'done')

-- 2. Lets create a job table with the enum
CREATE TABLE jobs
(
	job_id SERIAL PRIMARY KEY,
	job_status status_enum
)

-- 3. Lets insert some data in to the table
INSERT INTO jobs (job_status)
VALUES ('waiting')

-- 4. Lets view the data 
SELECT * FROM jobs

-- 5. How can we update the fields with the value waiting
UPDATE jobs
SET job_status = 'running'
WHERE job_status = 'waiting'

-- 6. Lets change the name of the status_enum 
ALTER TYPE status_enum RENAME TO status_enum_old

-- 7. Let recreate the status_enum wihout waiting value
CREATE TYPE status_enum AS ENUM ('queued', 'running', 'done')

-- 
ALTER TABLE jobs
ALTER COLUMN job_status 
TYPE status_enum 
USING job_status::TEXT::status_enum

-- 8. Lets drop the type
DROP TYPE status_enum_old





