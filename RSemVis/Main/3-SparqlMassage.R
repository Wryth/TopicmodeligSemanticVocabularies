#Modifies Sparql Ontologie discription to a dataframe(name,discription)

sparqlResults.df <- sparqlResults.l$results

sparqlVocabNames.v <- sparqlResults.df$s
sparqlVocabNames.v

sparqlVocabDescript.v <- sparqlResults.df$o
sparqlVocabDescript.v

rm(sparqlResults.l)