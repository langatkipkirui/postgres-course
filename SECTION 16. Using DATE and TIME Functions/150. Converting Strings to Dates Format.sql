-- 150. Converting Strings to Dates Format

-- Using TO_DATE function

/*
1. PostgresQL TO_DATE() function that helps you convert a string to a date

TO_DATE (date, format)

2. The following table illustrate the template patterns for formatting date values:

	Pattern format		 Description
	YYYY				 Year in 4 digits
	Y, YYY 				 year in 4 digits with comma
	YYY					 last 3 digits of year
	YY					 last 2 digits of year
	Y					 The last digit of year
	IYYY				 ISO 8601 week-numbering year (4 or more digits)
	IYY					 Last 3 digits of ISO 8601 week-numbering year
	IY					 Last 2 digits of ISO 8601 week-numbering year
	I					 Last digit of the ISO 8601 week-numbering year
	BC, bc AD or ad		 Era indicator without periods
	B.C., b.c., A.D. or a.d. Era indicator with periods
	MONTH				 English month name in uppercase
	Month 				 Full capitalized English month name
	month				 Full lowercase English month name jan, february
	MON					 Abbreviated uppercase month name e.g. JAN, FEB, etc
	Mon					 Arreviated lowercase month name e.g jan, feb etc
	MM					 month number from 01 to 12
	DAY					 Full uppercase day name
	Day					 Fully capitalized daya name
	day					 Full lowercase day name
	DY 					 Abbreviated upppercase day name
	Dy					 Abbreviated capitalized day name
	dy					 Abbreviated lowercase day name
	DDD					 Day of year (001-366)
	DD					 Day of the month (01-31)
	D					 Day of the week, sunday(1)  to saturday (7)
	ID					 ISO 8601 day of the week, monday, (1) to sunday (7)
	W					 Week of month (1-5) the (first week starts on the day of the 
						 month)
	

*/

-- 1 String to YYYY-MM-DD format to ISO format
SELECT TO_DATE('2020-01-01', 'YYYY-MM-DD');

--- date out of range err
SELECT TO_DATE('20200101', 'YYYY-MM-DD');
SELECT TO_DATE('20200101', 'YYYYMM');

SELECT TO_DATE('20200101', 'YYYYMMDD');
SELECT TO_DATE('202001', 'YYYYMM');

-- 2. String to DD-MM-YY format
SELECT TO_DATE('01-01-2020', 'DD-MM-YYYY');

-- what about when input string is not in format?
SELECT TO_DATE('2020-01-01', 'DD-MM-YYYY');


-- 3. String to YYYY-MM-DD format from long date
SELECT TO_DATE('December 1, 2020', 'Month DD, YYYY')

SELECT TO_DATE('December, 1, 2020', 'Month, DD, YYYY')

-- 4. String to YYYY-MM-DD format from short date
SELECT TO_DATE('Dec 1, 2020', 'Month DD, YYYY')


SELECT TO_DATE('Dec 1, 2020', 'Mon DD, YYYY')
























