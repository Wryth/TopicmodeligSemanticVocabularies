rm(list=ls(all=TRUE))
library(SPARQL)

#SPARQL endpoints----
wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbqs <- "http://dbpedia.org/sparql"

#SPARQL query----
query <- "
SELECT DISTINCT *
WHERE { ?s ?p $o }
LIMIT 100"

#Extract SPARQL results----
sparqlResults <- SPARQL(dbqs, query)