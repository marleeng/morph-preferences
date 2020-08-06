cd ..
cd ..
copy morph-rdb-dist\target\morph-rdb-dist-3.12.6.jar morph-examples\morph-rdb.jar
cd morph-examples
java -cp morph-rdb.jar;prueba/dependency/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner prueba dataset1-query1-skyline-exasol.morph.properties
cd prueba