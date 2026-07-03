-- 65. Decimals Numbers
/*
1. Decimals represents a whole number plus a fraction of a whole number

2. The fractions is represented by digits following a decimal point

Fixed-point numbers
--------------------

a) numeric(precision, scale)

Precision           Maximum number of digits to the left and right of decimal point
Scale               Number of digits allowable on the right of the decimal point.

b) decimal(precision, scale)
	e.g numeric(10,2) will return two digits to the right of the decimal points


Floating-point numbers
-----------------------
Two types are:
	 real 			allows precision to six decimal digits

	 double 		allows precision to 15 decimal points of precision

	 Unlike numeric, where we specify fixed precision and scale(e.g. numeric(10, 2)), the decimal point in
	 a given column can 'float' depending on the number
	 
Data type			Storage Size			Storage Type			Range
---------			------------			------------			-----
numeric, decimal    variable				fixed point 			upto 131072 digits before decimal point
																	upto 16383 digits after the decimal point

real				4 bytes					floating point 			6 decimal digits precision

double precision 	8 bytes 				floating point 			15 decimal digits precision 
*/

-- Lets create a table of numbers
CREATE TABLE table_numbers(
	col_numeric NUMERIC(20,5),
	col_real REAL,
	col_double DOUBLE PRECISION
);

SELECT * FROM table_numbers

-- Insert some data
INSERT INTO table_numbers(col_numeric, col_real, col_double)
VALUES
	(.9, .9, .9),
	(3.13579, 3.13579, 3.13579),
	(4.1357987654, 4.1357987654, 4.1357987654);
























