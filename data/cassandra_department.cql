CREATE TABLE TTest.tablename (
    id int,
    dept_name text,
    name TEXT,
    PRIMARY KEY(id, dept_name)
) WITH CLUSTERING ORDER BY(dept_name DESC);
