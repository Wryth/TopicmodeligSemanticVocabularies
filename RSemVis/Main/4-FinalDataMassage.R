#Create a general corpus of all ontologies, either from webscraping or/and SPARQL

corpusVocNames.v <- webTypeNames.v
corpusVocText.v <- webTypeDescription.v

corpus.m <- cbind(corpusVocNames.v,corpusVocText.v)
corpus.df <- as.data.frame(corpus.m, stringsAsFactors = FALSE)

naturalLanguagelVocabularySearch <- function(searchEntry, corpus){
  entry <- c("ontologySearch", searchEntry)
  rbind(corpus, entry)
}

corpus.df <- naturalLanguagelVocabularySearch("A person is a human, and can be regarded as a agent", corpus.df)

rm(corpusVocNames.v, corpusVocText.v, corpus.m)