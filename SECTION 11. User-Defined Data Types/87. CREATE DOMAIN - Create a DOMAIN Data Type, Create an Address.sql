-- 87. CREATE DOMAIN - Create a DOMAIN Data Type, Create an Address

/*

1. CREATE DOMAIN Statement creates a user-defined data type with range, optional DEFAULT,
NOT NULL, and CHECK constraint
2. They have to be unique within a schema scope. Cannot be re-used outside of the scope where
they are defined
3. Help to STANDARDIZE  your database data types in one place
4. A domain data type is a common data type and can be RE-USE in multiple columns. Write once 
and share 
5. NULL is default
6. Composite type : only single value return

CREATE DOMAIN name AS data_type Constraint
*/

-- Example 1. 'addr' domain with VARCHAR(100)
CREATE DOMAIN addr VARCHAR(100) NOT NULL

CREATE TABLE locations(
	-- adrress VARCHAR(100) NOT NULL --- instead of doing this we do:
	address addr
);

INSERT INTO locations(address)
VALUES ('324 Nairobi')

SELECT * FROM locations








