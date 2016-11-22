rm(list=ls(all=TRUE))
library(SPARQL)

wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbqs <- "http://dbpedia.org/sparql"

query = "
SELECT DISTINCT *
WHERE { $s ?p $o }
LIMIT 100"

results <- SPARQL(wdqs, query)
results.df <- as.data.frame(results$results)

corpus <- with(results.df, paste(results.df[,])) #paste(results.df[])
corpus[1]
length(corpus)



#<http://wikiba.se/ontology#statementValue
