-- 92. CREATE DOMAIN - Get the List of all DOMAIN Data Types


SELECT typname
FROM pg_catalog.pg_type
JOIN pg_catalog.pg_namespace
ON pg.namespace.oid = pg_type.typnamespace
WHERE
typtype = 'd' and nspname = 'public'

























