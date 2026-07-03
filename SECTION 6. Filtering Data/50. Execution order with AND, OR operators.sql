-- 50. ORDER OF EXECUTION WITH AND, OR OPERATORS
-- AND operator is processed first and OR is processed second

-- SQL processes the AND operator like MULTIPLICATION and the OR operator like 
-- ADDITION, unless you include parentheses.
SELECT * FROM movies
	WHERE movie_lang='English'
	AND age_certificate='18'
	OR movie_lang='Chinese'

-- Without parenthesis, the AND will be processed in the same way that 3*2+1 would 
-- equal 7, but 3*2(2+1) would be equal 9.