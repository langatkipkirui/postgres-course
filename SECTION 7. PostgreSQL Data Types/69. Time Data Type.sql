-- 69. Time Data Type

/*
1. Store the time of day values

2. Take 8 bytes to store time

3. column_name  TIME(precision)

4. Precision = number of fractional digits in the second field

5. Common formats 
	HH:MM				10:24
	HH:MM:SS			10:58:25		23:59:59 
	HHMMSS				103028

	MM:SS.pppppp		03:59.945674
	HH:MM:SS.pppppp		04:05:29:767686

*/
-- Let create a sample table 
CREATE TABLE table_time(
  id SERIAL PRIMARY KEY,
  class_name VARCHAR(100) NOT NULL,
  start_time TIME NOT NULL,
  end_time	TIME NOT NULL
)

-- Lets insert some data
INSERT INTO table_time(class_name, start_time, end_time)
VALUES
('Maths', '08:00:00', '09:00:00'),
('Pysics', '10:00:00', '11:00:00')

SELECT * FROM table_time

-- Get the current time
SELECT CURRENT_TIME(4) AS "Current Server Time", LOCALTIME AS "Local Time"

-- Arithemtic Operations
-- e.g difference the time 04:00 and 10:00
SELECT time '10:00:45' - time '04:04:55' AS RESULT;

-- Using interval
-- interval 'n type' 
-- n = number 
-- type = second, minute, hours, day, month, year


SELECT 
CURRENT_TIME AS "Current Time",
CURRENT_TIME + INTERVAL '2:02 hours' AS "Result"







