-- Concatenation with ||, CONCAT and CONCAT_WS
-- When concatenating how are NULL values handled
-- Are they ignored
-- Using ||
SELECT 'Hello' || NULL || 'World'  --So when null is present all the field become null

-- Using CONCAT
SELECT 
	revenue_domestic,
	revenue_international,
	CONCAT(revenue_domestic, ' | ', revenue_international) AS profits
FROM movies_revenues

-- So CONCAT or CONCAT_WS is smart enough to ignore the NULL