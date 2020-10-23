CREATE TABLE TTest.tablename (
    id int,
    dept_name text,
    name TEXT,
    PRIMARY KEY(id)
) WITH CLUSTERING ORDER BY(dept_name DESC);
