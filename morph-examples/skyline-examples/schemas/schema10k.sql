ALTER SYSTEM SET QUERY_CACHE = 'OFF'

DROP SCHEMA IF EXISTS skyline_experiments CASCADE;
CREATE SCHEMA IF NOT EXISTS skyline_experiments;

DROP TABLE IF EXISTS skyline_experiments.i10k;
CREATE TABLE skyline_experiments.i10k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
IMPORT INTO skyline_experiments.i10k  
    FROM LOCAL CSV FILE 'C:\Users\Marlene Goncalves\Desktop\Skyline OBDA\experiments\datasets\i10k.csv' 
    COLUMN SEPARATOR = ',' ;

DROP TABLE IF EXISTS skyline_experiments.a10k;
CREATE TABLE skyline_experiments.a10k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
IMPORT INTO skyline_experiments.a10k  
    FROM LOCAL CSV FILE 'C:\Users\Marlene Goncalves\Desktop\Skyline OBDA\experiments\datasets\i10k.csv' 
    COLUMN SEPARATOR = ',' ;
	
DROP TABLE IF EXISTS skyline_experiments.c10k;
CREATE TABLE skyline_experiments.c10k (id int, d1 float, d2 float, d3 float, d4 float, d5 float, d6 float, d7 float, d8 float, d9 float, d10 float);
IMPORT INTO skyline_experiments.c10k  
    FROM LOCAL CSV FILE 'C:\Users\Marlene Goncalves\Desktop\Skyline OBDA\experiments\datasets\i10k.csv' 
    COLUMN SEPARATOR = ',' ;