-- 74. JSON data type

/*
1. PostgreSQL has built in support for JSON with great range of processing functions
and operators, and complete  indexing support.

2. The JSON datatype is actually text under the hood, with a verification that the 
format is valid json input.. much like XML.

3. The JSONB implemented a binary version of the JSON datatype

4. The JSON datatype, being a text datatype, stores the data presentation exactly 
as it is sent to PostgreSQL, including whitespace and identation, and also multiple-
keys when present (no processing at all is done on the content, only form validation)

5. The JSONB datatype is an advanced binary storage format with full processing,
indexing and searching capabilities and as such pre-processes the JSON data to an 
internal format, which does include a single value per key; and also isn't sensible
or identation.

*/

-- 1. Let's create a sample table 
CREATE TABLE table_json(
id SERIAL PRIMARY KEY,
docs JSON
)

-- 2. Let's view the data in the table_json
SELECT * FROM table_json

-- 3. Let's insert some data
INSERT INTO table_json (docs)
VALUES
('[1, 2, 3, 4, 5]'),
('[1]'),
('{"Key":"Value"}');

-- 4. Let's search the data
SELECT * FROM table_json
WHERE docs @> '1';

-- 5. Lets alter the type to JSONB so that we can search the data
ALTER TABLE table_json
ALTER COLUMN docs TYPE JSONB

CREATE INDEX ON table_json  USING GIN (docs jsonb_path_ops)




