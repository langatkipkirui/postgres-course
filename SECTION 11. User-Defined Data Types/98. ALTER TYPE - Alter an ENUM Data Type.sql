-- 98. ALTER TYPE - Alter an ENUM Data Type

-- 1. Create a sample ENUM data type
-- CREATE TYPE name AS ENUM (values)
CREATE TYPE colors_enum AS ENUM('Yellow', 'Indigo', 'Pink')

-- 2. Update a value
-- ALTER TYPE name RENAME VALUE oldvalue TO newvalue
ALTER TYPE colors_enum RENAME VALUE 'Indigo' TO 'Orange'

-- 3. List all ENUM values
SELECT enum_range(NULL::colors_enum) 

-- To add a new value 
-- ALTER TYPE name ADD VALUE valuename [BEFORE | AFTER] value
ALTER TYPE colors_enum ADD VALUE 'Teal' AFTER 'Pink'





















