-- 83. to_char function

/*
	1. PostgreSQL TO_CHAR() function converts
		- a timestamp
		- an interval
		- an integer
		- a double precision, or
		- a numeric value

		to string.

	2. TO_CHAR(expression, format)

	3. Valid format options for numbers

		Format		Description
		9			Numeric value with the specified number of digits
		0	 		Numeric valuewith leading zeros
		.			(period) decimal point
		D	 		Decimal point that uses locale
		,	 		(comma) group (thousand) separator
		FM	 		Fill mode, which suppresses padding blanks and leading zeros
		PR	 		negative value in angle brackets
		S			Sign anchored to a number that uses locale
		L	 		Currency symbol that uses locale
		G 	 		Group separator that uses locale
		MI 	 		Minus sign in the specificified position for numbers that are less than 0.
		PL			Plus sign in the specified position
		PN 	 		Roman numeral that ranges from 1 to 3999
		TH or th	Upper care or lower case number suffix
	
	Valid timestamp format options 

	Pattern 						Description
	--------                     	--------------
	Y, YYY							year in 4 digits with comma
	YYYY							year in 4 digits
	YYY								last 3 digits of year
	YY								last 2 digits of year
	Y								last digit of a year
	IYYY							ISO 8601  week-numbering year (4 or more digits)
	IYY								Last 3 digits of ISO 8601 week-numbering year
	IY								Last 2 digits of ISO 8601 week-numbering year
	I								Last digit of ISO 8601 week-numbering year
	BC, bc, AD or ad				Era indicator without periods
	B.C., b.c., A.D. or a.d.		Era indicator with periods 
	MONTH							English month name in uppercase
	Month							Full capitalized English month name
	month 							Full lowercase English month name
	MON								Abbreviated upercase month name e.g. JAN, FEB, etc
	Mon								Abbreviated capitalized month name e.g. Jan,Feb, etc
	mon								Abbreviated lowecase month name e.g. Jan,Feb, etc
	MM								Month number from 01 to 12
	DAY								Full uppercase day name
	Day								Full capitalized day name
	day								Full lowercase day name
	DY								Abbreviated uppercase day name e.g THUR
	Dy								Abbreviated Capitalized day name e.g Thur
	dy								Abbreviated lowercase day name e.g thur
	DDD								Day of the year	(001-366)
	IDDD							Day of ISO 8601 week-numbering year (001-371:
									day 1 of the yearis monday of the first ISO week)
	DD								Day of month (01-31)
	D								Day of the week, sunday (1) to saturday (7)
	ID								ISO 8601 day of the week, Monday (1) to Sunday (7)
	W								Week of the month (1-5) (the first week starts on the
									first of day of the month)
	WW 								Week number of year (1-53) (the first week starts on the
									first day of the year)
	IW 								Week number os ISO 8601 week-numbering year (01-53: the 
									first thursday of the year is in week 1)
	CC 								Century e.g. 21 22 etc.
	J								Julian Day (integer days since november 24 4714 BC at
									midnight UTC)
	RM								Month in uppercase Roman numerals (i-xii)
	rm								Month in lowercase Roman numerals (i-xii)
	HH								Hour of the day (0-12)
	HH12							Hour of the day (0-12)
	HH24							Hour of the day (0-23)
	MI								Minute (0-59)
	SS								Second (0-59)
	MS								Millisecond (000-999)
	US								Microsecond (000000-999999)
	SSSS							Seconds past midnight (0-86399)			
	AM, am, PM or pm				Meridiem indicator (without periods)


	4. return value will be a TEXT type
	

*/


-- 2. Convert an integer to a string
SELECT 
	TO_CHAR(
		100870,
		'9,99999'
);

-- 3. Lets view movie release date in different format
SELECT

	TO_CHAR(release_date, 'DD-MM-YY'),
	TO_CHAR(release_date, 'DD-MM-Y'),
	TO_CHAR(release_date, 'DD-Month-YYYY'),
	TO_CHAR(release_date, 'Day-MM-YYYY'),
	TO_CHAR(release_date, 'Day-Month-DD-YYYY'),
	TO_CHAR(release_date, 'Dy-MM-YY')
FROM movies;


-- 4. Converting timestamp literal to a string
SELECT
	TO_CHAR(
	TIMESTAMP '2020-01-01 10:30:48.657',
	'HH24:MI:SS:MS'
	);


-- 5. Adding currency symbol to say movies revenues
SELECT
	movie_id,
	revenue_domestic,
	TO_CHAR(revenue_domestic, '$9999D9999') AS "Revenue Four Decimal"
FROM movies_revenues;









