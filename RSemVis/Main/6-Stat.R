#Find which topic, searchEntry scores best at, present other types that score similar.


#Find similar scoring vocabulary types.
similarTypeDescriptions <- function(){
  searchBestScore <- which(documentTopicScore.df==max(documentTopicScore.df[length(documentTopicScore.m[,1])]), arr.ind=TRUE)  
}

max(documentTopicScore.m[length(documentTopicScore.m[,1])])
searchBestScore <- which(documentTopicScore.df==max(documentTopicScore.df[length(documentTopicScore.m[,1])]), arr.ind=TRUE)
searchBestScore
documentTopWords.df


#
max(documentTopicScore.m)


#Max score is: [document(row),topic(col)]
positionMaxScore.m <- which(documentTopicScore.df==max(documentTopicScore.df), arr.ind=TRUE)
positionMaxScore.m

#Document 1169, topic 940
#docTopic.df[1169, 940]

#Text of best scoring.
corpus.df[positionMaxScore.m[1],1]


#The highest valued words in a topic.
maxDocumentWordScore.df <- mallet.top.words(topic.model, topicWordScore.m[positionMaxScore.m[2],])
maxDocumentWordScore.df
