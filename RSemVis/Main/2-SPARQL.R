library(SPARQL)
#query descriptions and vocabulary terms from linked open vocabularies SPARQL endpoint.


#SPARQL endpoints----
lovURL <- "http://lov.okfn.org/dataset/lov/sparql"

query <- "SELECT DISTINCT *
  WHERE {
    ?s ?p ?o
  }LIMIT 200"

query <- "PREFIX vann:<http://purl.org/vocab/vann/>
PREFIX voaf:<http://purl.org/vocommons/voaf#>

SELECT DISTINCT *
WHERE{
  ?s a voaf:Vocabulary .
    ?s ?p ?o
} limit 100"

#Extract SPARQL results----
sparqlResults.l <- SPARQL(lovURL, query)

rm(lovURL, query)