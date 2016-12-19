#Concatenate Ontology type descriptions accoringly. 
collapsByOntologyType <- function(ontologyText, breakText){
  newText <- c()
  n <- 1
  for(i in 1:length(ontologyText)) {
    if(ontologyText[i] == breakText){
      typeDescrip <- paste(ontologyText[n:i-1], sep = "", collapse = " ")
      newText <- c(newText, typeDescrip)
      n <- i + 2
    }
  }
  return(newText)
}

#Find similar scoring vocabulary types.
similarVocabularyTypeDescription <- function(){
  searchEntryPos <- documentTopicScore.m[length(documentTopicScore.m[,1]),]
  maxScore <- max(documentTopicScore.m[length(documentTopicScore.m[,1]),])
  searchBestScore <- which(searchEntryPos == maxScore, arr.ind = TRUE)
  topVocType <- head(sort(documentTopicScore.m[,searchBestScore], decreasing = TRUE),10)
  results <- which(documentTopicScore.m[,searchBestScore] %in% x, arr.ind = TRUE)
  return(endResult <- corpus.df[results,])
}
