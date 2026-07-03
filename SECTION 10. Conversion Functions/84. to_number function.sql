-- 84. TO_NUMBER()
/*
	1. 	PostgreSQL TO_NUMBER() function converts a character string to a numeric value.

	2. TO_NUMBER(string, format)

	3. Format options are:

		Format description
		9		Numeric vale with the specified number of digits 
		0		Numeric value with leading zeros
		.		(period) decimal point
		D		decimal point that uses locale 
		,		(comma) group (thousand) separator
		FM		Fill mode, which suppresses padding blanks and leading zeros
		PR		Negative value in angle brackets.
		S		Sign anchored to a number that uses locale
		L		Currency symbol that uses locale
		G		Group separator that uses locale
		MI 		Minus sign in the specified position for numbers that are less than 0
		PL		Plus sign in the specified position for numbers that are greater than 0
		SG		Plus / Minus sign in the specified position
		RN 		Roman numeral that ranges from 1 to 3999
		TH or th Upper casse or lower case ordinal number suffix

*/

-- 1. Convert string to a number
SELECT TO_NUMBER(
	'1426.54',
	'9999.999');
	
SELECT TO_NUMBER(
	'1426.54',
	'9999.9');

SELECT TO_NUMBER(
	'1426.54',
	'9999.');

-- Another example
SELECT TO_NUMBER(
	'10,645.732-',
	'99G999D999S'
)

-- fromatting
SELECT TO_NUMBER(
	'$1,421.73',
	'L9G999D99'
);

SELECT TO_NUMBER(
	'1,234,567.89',
	'9G999G999.99'
)

SELECT TO_NUMBER(
	'1,234,567.89',
	'9G999G999D99'
)

SELECT TO_NUMBER(
	'$10,978,836.658',
	'L99G999G999D999'
)


























