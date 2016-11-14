rm(list=ls(all=TRUE))
library(SPARQL)

wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbqs <- "http://dbpedia.org/sparql"

query = "
SELECT DISTINCT $s $p $o
WHERE { $s $p $o }
LIMIT 500"

results <- SPARQL(dbqs, query)
results.df <- as.data.frame(results$results)

