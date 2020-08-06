ALTER SYSTEM SET QUERY_CACHE = 'OFF'

DROP SCHEMA IF EXISTS skyline_experiments CASCADE;
CREATE SCHEMA IF NOT EXISTS skyline_experiments;

DROP TABLE IF EXISTS skyline_experiments.i1m;
CREATE TABLE skyline_experiments.i1m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.i1m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.a1m;
CREATE TABLE skyline_experiments.a1m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.a1m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.c1m;
CREATE TABLE skyline_experiments.c1m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.c1m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';
