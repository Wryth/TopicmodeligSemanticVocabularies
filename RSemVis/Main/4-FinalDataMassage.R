#Create a general corpus of all ontologies, either from webscraping or/and SPARQL

corpusVocNames.v <- webTypeNames.v
corpusVocText.v <- webTypeDescription.v

corpusVocNames.v <- append(corpusVocNames.v,sparqlVocabNames.v)
corpusVocText.v <- append(corpusVocText.v,sparqlVocabDescript.v)



corpus.m <- cbind(corpusVocNames.v,corpusVocText.v)
corpus.df <- as.data.frame(corpus.m, stringsAsFactors = FALSE)


naturalLanguagelVocabularySearch <- function(searchEntry, corpus){
  entry <- c("ontologySearch", searchEntry)
  rbind(corpus, entry)
}

####ADD user spessific vocabulary term Description####
corpus.df <- naturalLanguagelVocabularySearch("The Person class represents people, and can be regarded as an agent", corpus.df)
#corpus.df <- naturalLanguagelVocabularySearch("A person class is a being, such as a human, that has certain capacities or attributes constituting personhood, which in turn is defined differently by different authors in different disciplines, and by different cultures in different times and places.",corpus.df)


rm(corpusVocNames.v, corpusVocText.v, corpus.m, webTypeDescription.v, webTypeNames.v)
