-- 124. Listing all Sequences in a Database

SELECT relname sequence_name
FROM pg_class
WHERE
relkind = 'S'

















