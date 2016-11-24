rm(list=ls(all=TRUE))
library(SPARQL)

#SPARQL endpoints----
wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbqs <- "http://dbpedia.org/sparql"

#SPARQL query----
query <- "
SELECT DISTINCT *
WHERE { ?s ?p $o }
LIMIT 1000"

#Extract SPARQL results----
sparqlResults <- SPARQL(dbqs, query, ns=c('rdf', '<http://www.w3.org/1999/02/22-rdf-syntax-ns#>',
                                          'owl', 'http://www.w3.org/2002/07/owl#>',
                                          'dbpediaProp' ,'<http://dbpedia.org/property/>'))
