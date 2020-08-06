ALTER SYSTEM SET QUERY_CACHE = 'OFF'

DROP SCHEMA IF EXISTS skyline_experiments CASCADE;
CREATE SCHEMA IF NOT EXISTS skyline_experiments;

DROP TABLE IF EXISTS skyline_experiments.i10k;
CREATE TABLE skyline_experiments.i10k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.i10k (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.a10k;
CREATE TABLE skyline_experiments.a10k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.a10k (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.c10k;
CREATE TABLE skyline_experiments.c10k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.c10k (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.i100k;
CREATE TABLE skyline_experiments.i100k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.i100k (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.a100k;
CREATE TABLE skyline_experiments.a100k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.a100k (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.c100k;
CREATE TABLE skyline_experiments.c100k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.c100k (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.i1m;
CREATE TABLE skyline_experiments.i1m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.i1m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.a1m;
CREATE TABLE skyline_experiments.a1m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.a1m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.c1m;
CREATE TABLE skyline_experiments.c1m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.c1m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.i10m;
CREATE TABLE skyline_experiments.i10m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.i10m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.a10m;
CREATE TABLE skyline_experiments.a10m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.a10m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.c10m;
CREATE TABLE skyline_experiments.c10m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.c10m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.i100m;
CREATE TABLE skyline_experiments.i100m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.i100m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.a100m;
CREATE TABLE skyline_experiments.a100m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.a100m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';

DROP TABLE IF EXISTS skyline_experiments.c100m;
CREATE TABLE skyline_experiments.c100m (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
COPY skyline_experiments.c100m (id, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10) FROM STDIN DELIMITERS ',' CSV QUOTE '''';
