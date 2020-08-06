# Morph-Skyline++

Morph-Skyline++ is an RDB2RDF engine for queries based on qualitative preferences, developed by the Ontology Engineering Group, that follows the R2RML specification (http://www.w3.org/TR/r2rml/). 

Qualitative preferences [1] allow a user to express preferences comparatively over a set of alternatives. They are more intuitive and easier to elicit from the user. For example, it is more natural for users to express phrases such as "I prefer A more than B" (prioritized preferences), "If X, I prefer A to B" (conditional preferences), "I prefer X if there is no other Y with a lower A and a higher B" (skyline). These phrases can be modeled with qualitative preferences. 


Morph-Skyline++ extends Morph-RDB and it supports two operational modes: data upgrade (generating RDF instances from data in a relational database) and skyline query translation (SPARQL to SQL). Morph-Skyline has been tested on TPC-H benchmark and LinkedMDB. At the moment, Morph-Skyline++ works with EXASol.

This repository contains code and experiments for the paper "Morph-Skyline++: A Virtual Ontology-Based Data Access Approach for Qualitative Queries". Experiments can be found in the Experiments directory of this repository.

User guides:
As Morph-Skyline++ extends Morph-RDB, for those who want to use this project on an user level, you can find a little guide for Morph-RDB to on the main branch wiki : https://github.com/oeg-upm/morph-rdb/wiki.

If, on the other hand, you want to edit the project or at least work from an IDE such as Eclipse, we suggest you to follow this steps:
 - Download the source code.
 - Once unziped, you may notice that the imports doesn´t match the actual directories. In order to avoid changing all the imports or all the directories, import this way: Import -> Maven -> Existing Maven Project, and select as root the folder where you unziped the project (it may take a few minutes).
 - Now that it´s finally imported, you can run the file es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner.scala (in other to pass the arguments in Eclipse, right click, Run As -> Run Configuration -> Arguments, and remember to imput both the path to the .properties file and it´s full name).
* In case the program doesn´t find the file log4j.properties, move it from "morph-examples" to "morph-r2rml-rdb", thought this file isn´t essential.

<!--- Acknowledgement: Since January 2020, the development of morph-Skyline has been supported by the SPRINT project (http://sprint-transport.eu/).--->

References:
[1] Patel-Schneider, P. F., Polleres, A., & Martin, D. (2018, November). Comparative preferences in SPARQL. In European Knowledge Acquisition Workshop (pp. 289-305). Springer, Cham.