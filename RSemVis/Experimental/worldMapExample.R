rm(list=ls(all=TRUE))
library(SPARQL)
library(ggplot2)
library(rworldmap)

wdqs <- "https://query.wikidata.org/bigdata/namespace/wdq/sparql"

query = "
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
PREFIX qualifier: <http://www.wikidata.org/prop/qualifier/>
PREFIX statement: <http://www.wikidata.org/prop/statement/>
SELECT DISTINCT ?countryLabel ?ISO3Code ?latlon ?prevalence ?year 
WHERE {
wd:Q36956 wdt:P699 ?doid ; # P699 Disease ontology ID
p:P1193 ?prevalencewithProvenance . # P1193 prevalence
?prevalencewithProvenance qualifier:P17 ?country ;
qualifier:P585 ?year ;
statement:P1193 ?prevalence . # P17 country
?country wdt:P625 ?latlon ;
rdfs:label ?countryLabel ;
wdt:P298 ?ISO3Code ;
wdt:P297 ?ISOCode .
FILTER (lang(?countryLabel) = \"en\")
}"

results <- SPARQL(wdqs, query)
resultMatrix <- as.matrix(results$results)

#View(resultMatrix)
#sPDF <- joinCountryData2Map(results$results, joinCode = "ISO3", nameJoinColumn = "ISO3Code")
#mapCountryData( sPDF, nameColumnToPlot="prevalence",  oceanCol="lightblue", missingCountryCol="white")
#View(getMap())
