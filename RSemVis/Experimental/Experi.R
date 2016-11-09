rm(list=ls(all=TRUE))
library(SPARQL)
library(ggplot2)
library(rworldmap)

wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"

query = "
SELECT DISTINCT $s $p $o
WHERE { $s $p $o }
LIMIT 500"

results <- SPARQL(wdqs, query)
resultMatrix <- as.matrix(results$results)


#View(resultMatrix)
#sPDF <- joinCountryData2Map(results$results, joinCode = "ISO3", nameJoinColumn = "ISO3Code")
#mapCountryData( sPDF, nameColumnToPlot="prevalence",  oceanCol="lightblue", missingCountryCol="white")
#View(getMap())
ggplot(results)

