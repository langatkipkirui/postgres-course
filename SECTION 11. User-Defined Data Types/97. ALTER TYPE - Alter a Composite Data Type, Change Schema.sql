-- 97. ALTER TYPE - Alter a Composite Data Type, Change Schema
-- 1. Lets create a sample data type
CREATE TYPE myaddress AS(
	city VARCHAR(50),
	country VARCHAR(20)
)

-- 2. Rename a data type
-- ALTER TYPE name RENAME TO newname
ALTER TYPE myaddress RENAME TO my_address

-- 3. We can change the owner of the type
-- ALTER TYPE my_address OWNER TO username
ALTER TYPE my_address OWNER TO "Kevin"

-- 4. To change the schema 
-- ALTER TYPE name SET SCHEMA schemaname
ALTER TYPE my_address SET SCHEMA test_scm

-- 5. To add a new attribute 
-- To add a new attribute to the current schema use:
-- ALTER TYPE name ADD ATTRIBUTE attributes
ALTER TYPE myaddress ADD ATTRIBUTE street_address VARCHAR(150)


-- To alter a type in another schema use:
ALTER TYPE test_scm.my_address ADD ATTRIBUTE street_address VARCHAR(150)















