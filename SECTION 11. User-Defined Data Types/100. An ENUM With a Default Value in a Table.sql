-- 100. An ENUM With a Default Value in a Table
-- 1. Lets create an enum data type
CREATE TYPE status AS ENUM('peding', 'approved', 'declined')

-- 2. Lets create a sample table
CREATE TABLE cron_jobs(
	cron_job_id INT,
	status status DEFAULT 'pending'
);

-- 3. Lets insert some data into the table
INSERT INTO cron_jobs (cron_job_id)
VALUES(1)

-- 4. lets view the data in the table
SELECT * FROM cron_jobs

