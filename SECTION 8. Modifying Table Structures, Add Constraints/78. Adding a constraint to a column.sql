-- 78. Adding a constraint to a column

-- Add a UNIQUE constraint to a column

-- 1. Lets create a sample table

CREATE TABLE web_links(
link_id SERIAL PRIMARY KEY,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);

-- 2. Lets view the data in the table
SELECT * FROM web_links

-- 3. Let's insert some data into the web_links table
INSERT INTO web_links(link_url, link_target)
VALUES ('https://google.com', '_blank')
VALUES ('https://amazon.com', '_blank')


-- 4. Lets change the link_url column to constraint UNIQUE
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE (link_url)


-- 5. To set a column to accept only defined allowed/acceptable values

ALTER TABLE web_links
ADD COLUMN is_enable VARCHAR(2);

-- Adding constraint to be 'Y' or 'N'
ALTER TABLE web_links
ADD CHECK (is_enable IN ('Y', 'N'))

-- Let's insert values after adding constraints
INSERT INTO web_links(link_url, link_target, is_enable)
VALUES ('https://supabase.com', '_blank', 'Y')

-- 6. Let's update the table 
UPDATE web_links
SET is_enable = 'Y'
WHERE link_id = '3'


















