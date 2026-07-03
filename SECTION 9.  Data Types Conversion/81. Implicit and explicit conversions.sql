-- 81 Implicit and Explicit conversions

-- 1. Using integer and factorial
SELECT 20 ! AS "Result";

-- 2. ! factorial takes an argument type bigint, so lets you convert integer to bigint
SELECT CAST(20 AS BIGINT) ! AS "Result";

-- 3. Round with numeric
SELECT ROUND(10.69999, 4) AS "Result"
-- to make the string to integer before rounding:
SELECT ROUND(CAST('10.69999' AS NUMERIC), 4) AS "Result"

-- 4. CAST with text
SELECT SUBSTR('123456', 2) AS "Result"

-- 5. Doing with explicit and implicit ways
SELECT
	SUBSTR('3764352', 3) AS "Implicit",
	SUBSTR(CAST('3764352' AS TEXT), 3) AS "Explicit";
	