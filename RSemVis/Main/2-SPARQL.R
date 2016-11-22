rm(list=ls(all=TRUE))
library(SPARQL)

wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"
dbqs <- "http://dbpedia.org/sparql"

query = "
SELECT DISTINCT *
WHERE { $s ?p $o }
LIMIT 100"

results <- SPARQL(dbqs, query)
results.df <- as.data.frame(results$results)

corpus <- within(results.df, id <- paste(s,p,o, sep = ""))
