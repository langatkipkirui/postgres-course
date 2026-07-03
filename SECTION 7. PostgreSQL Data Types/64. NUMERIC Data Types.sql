-- 64. Numbers Data Types
/*
	1. Numbers columns can hold various types numbers, but not NULL values.

	2. Math Operations(adding, multiplying, divide etc) can be perfomed on numbers data types

	3. Two main types of numbers data are:
		Integers 						whole numbers, both +ve and -ve

		Fixed-point, floating point  	Two format of fractions of whole numbers

*/

/*
Integers
	1. Most common type

	2. Three main types of integers
	
		smallint 	2 bytes		  -32768					to 			+32767

		integer		4 bytes 	  -2147483648 				to 			+2147483647

		bigint 		8 bytes 	  -9223373036854775808		to 			+9223372036854775807

	3. bigint will be good enough for most of the situation if not all! Numbers larger than 2.1 billion

	4. Database will give error if a number is outside of its data type range as per above table.

	5. Auto increment integer data type: SERIAL 		AN ANSI SQL standard for identity columns
		For serial data type:

		smallserial      2 bytes          1 to 32767
		serial           4 bytes          1 to 2147483647
		bigserial        8 bytes          1 to 9223372036854775807
*/
CREATE TABLE table_serial(
	product_id SERIAL,
	product_name VARCHAR(100)	
)

SELECT * FROM table_serial

-- Lets insert some data
INSERT INTO table_serial (product_name)
VALUES
  ('Pencil'),
  ('Desk');









































