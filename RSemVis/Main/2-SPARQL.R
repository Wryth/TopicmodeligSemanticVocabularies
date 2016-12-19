library(SPARQL)
#query descriptions and vocabulary terms from linked open vocabularies SPARQL endpoint.


#SPARQL endpoints----
#wikidataURL <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
#dbpediaURL <- "http://dbpedia.org/sparql"
lovURL <- "http://lov.okfn.org/dataset/lov/sparql"

query <- "SELECT DISTINCT *
  WHERE {
    ?s ?p ?o
  }LIMIT 200"

#Extract SPARQL results----
sparqlResults.l <- SPARQL(lovURL, query)

rm(lovURL, query)