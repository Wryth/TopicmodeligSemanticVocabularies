rm(list=ls(all=TRUE))
library(SPARQL)

#SPARQL endpoints----
#wikidataURL <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbpediaURL <- "http://dbpedia.org/sparql"

#All triples of all connected with foaf:Person.
query <- "SELECT DISTINCT ?s ?p ?o
  WHERE {
    ?s ?p foaf:Person.
    ?s dbo:abstract ?o .
    FILTER (langMatches(lang(?o),\"en\"))
  }LIMIT 1000"

#Extract SPARQL results----
sparqlResults.l <<- SPARQL(dbpediaURL, query)


#Not currently used----
#ns=c('rdf', '<http://www.w3.org/1999/02/22-rdf-syntax-ns#>',
#'owl', 'http://www.w3.org/2002/07/owl#>',
#'dbpediaProp' ,'<http://dbpedia.org/property/>')

rm(dbpediaURL, query)
