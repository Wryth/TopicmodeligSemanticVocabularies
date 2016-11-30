rm(list=ls(all=TRUE))
library(SPARQL)

#SPARQL endpoints----
wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbqs <- "http://dbpedia.org/sparql"

#SPARQL query----
query1 <- "SELECT DISTINCT s? ?p ?o
WHERE { ?s ?p $o 
} LIMIT 1000"

query2 <- "SELECT ?s ?p ?o
WHERE {
?s ?p wd:Q5 .
?s ?p ?o .
} LIMIT 100"

query3 <- "SELECT ?s ?p ?o
WHERE {
?s ?pre <http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#NaturalPerson>.
?s ?p ?o .
}LIMIT 100"

query4 <- "SELECT ?s ?o ?p
WHERE {
dbr:Alan_Turing dbo:abstract ?o .
FILTER (langMatches(lang(?o),\"en\"))
} LIMIT 5"

#abstract of all how are "NaturalPerson".
query5 <- "SELECT DISTINCT ?s ?p ?o
WHERE {
?s ?p <http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#NaturalPerson>.
?s dbo:abstract ?o .
FILTER (langMatches(lang(?o),\"en\"))
}LIMIT 100
"
#All triples of all connected with"NaturalPerson".
query5 <- "SELECT DISTINCT ?s ?p ?o
WHERE {
?s ?p <http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#NaturalPerson>.
?s dbo:abstract ?o .
FILTER (langMatches(lang(?o),\"en\"))
}LIMIT 1000
"



#Extract SPARQL results----
sparqlResults <- SPARQL(dbqs, query5)



#Not currently used----
#ns=c('rdf', '<http://www.w3.org/1999/02/22-rdf-syntax-ns#>',
#'owl', 'http://www.w3.org/2002/07/owl#>',
#'dbpediaProp' ,'<http://dbpedia.org/property/>')