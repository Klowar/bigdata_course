CREATE MATERIALIZED VIEW IF NOT EXISTS TTest.mv AS 
SELECT id, dept_name, name
FROM TTest.tablename
WHERE id IS NOT NULL AND name IS NOT NULL AND dept_name IS NOT NULL
PRIMARY KEY(name, id, dept_name);