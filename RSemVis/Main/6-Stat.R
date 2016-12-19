#Find which topic, searchEntry scores best at, present other types that score similar.


#Find similar scoring vocabulary types.
similarVocabularyTypeDescription <- function(){
  searchEntryPos <- documentTopicScore.m[length(documentTopicScore.m[,1]),]
  maxScore <- max(documentTopicScore.m[length(documentTopicScore.m[,1]),])
  searchBestScore <- which(searchEntryPos == maxScore, arr.ind=TRUE)
  topVocType <- head(sort(documentTopicScore.m[,searchBestScore], decreasing = TRUE),10)
  results <- which(documentTopicScore.m[,searchBestScore] %in% x, arr.ind = TRUE)
  endResult <- corpus.df[results,1:2]
}
endResult.df <- similarVocabularyTypeDescription()
View(endResult.df)

#Document 76 scores best at topic X
searchBestScore <- which(documentTopicScore.m[length(documentTopicScore.m[,1]),] == max(documentTopicScore.m[length(documentTopicScore.m[,1]),]), arr.ind=TRUE)
searchBestScore

#The 10 other documents that score well on the same topic.
x <- head(sort(documentTopicScore.m[,searchBestScore], decreasing = TRUE),10)
x2 <- which(documentTopicScore.m[,searchBestScore] %in% x, arr.ind = TRUE)
x2

endResult.df <- corpus.df[x2,1:2]
View(endResult.df)


corpus.df[24,2]

#The highest valued words in the topic our search scored best at.
documentTopWords.df <- mallet.top.words(topic.model, topicWordScore.m[searchBestScore,])
documentTopWords.df

topicHighScoringDocuments.v <- documentTopicScore.m[,searchBestScore]
sort(topicHighScoringDocuments.v)

corpus.df[76,2]




#----
max(documentTopicScore.m)


#Max score is: [document(row),topic(col)]
positionMaxScore.m <- which(documentTopicScore.m == max(documentTopicScore.m), arr.ind=TRUE)
positionMaxScore.m

#Document 1169, topic 940
#docTopic.df[1169, 940]

#Text of best scoring.
corpus.df[positionMaxScore.m[1],1]


#The highest valued words in a topic.
maxDocumentWordScore.df <- mallet.top.words(topic.model, topicWordScore.m[positionMaxScore.m[2],])
maxDocumentWordScore.df
