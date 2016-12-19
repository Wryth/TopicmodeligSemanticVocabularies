library(SPARQL)
#query descriptions and vocabulary terms from linked open vocabularies SPARQL endpoint.


#SPARQL endpoints----
lovURL <- "http://lov.okfn.org/dataset/lov/sparql"

query <- "PREFIX voaf:<http://purl.org/vocommons/voaf#>
SELECT DISTINCT ?s ?o
WHERE{
?s a voaf:Vocabulary .
?s <http://purl.org/dc/terms/description> ?o
} limit 100"

#Extract SPARQL results----
sparqlResults.l <- SPARQL(lovURL, query)

rm(lovURL, query)
