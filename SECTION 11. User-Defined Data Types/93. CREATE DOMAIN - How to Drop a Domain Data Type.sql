-- 93. CREATE DOMAIN - How to Drop a Domain Data Type
-- Drop DOMAIN name
DROP DOMAIN positive_numeric CASCADE

SELECT * FROM sample

-- When we drop a domain all the object that depend on it are dropped too. so
-- how can we safely drop the domain:
-- 1. Changing the column type first
ALTER TABLE colors
ALTER COLUMN color TYPE VARCHAR(20)

-- 2. Drop the Domain safely
DROP DOMAIN valid_color CASCADE

-- 3. We still remain with our data
SELECT * FROM colors










