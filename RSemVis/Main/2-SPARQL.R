rm(list=ls(all=TRUE))
library(SPARQL)

#SPARQL endpoints----
wikidataSparqlEndpoint <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbpediaSparqlEndpoint <- "http://dbpedia.org/sparql"

#abstract of all how are "NaturalPerson".----
query1 <- "SELECT DISTINCT ?s ?p ?o
  WHERE {
    ?s ?p foaf:Person .
    ?s dbo:abstract ?o .
    FILTER (langMatches(lang(?o),\"en\"))
  }LIMIT 1000"

#Extract SPARQL results----
sparqlResults <- SPARQL(dbpediaSparqlEndpoint, query)


#Not currently used----
#ns=c('rdf', '<http://www.w3.org/1999/02/22-rdf-syntax-ns#>',
#'owl', 'http://www.w3.org/2002/07/owl#>',
#'dbpediaProp' ,'<http://dbpedia.org/property/>')
#'
