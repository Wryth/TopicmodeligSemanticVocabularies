rm(list=ls(all=TRUE))
library(SPARQL)

wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"

query = "
SELECT DISTINCT $s $p $o
WHERE { $s $p $o }
LIMIT 500"

results <- SPARQL(wdqs, query)
resultMatrix <- as.matrix(results$results)
