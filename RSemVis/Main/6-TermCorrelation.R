#Find which topic, searchEntry scores best at, present other types that score similar.

#endResult.df <- similarVocabularyTypeDescription()
#View(endResult.df)

#Search Entry scores best at topic X
searchBestScore <- which(documentTopicScore.m[length(documentTopicScore.m[,1]),] == max(documentTopicScore.m[length(documentTopicScore.m[,1]),]), arr.ind=TRUE)
searchBestScore

#The 10 other documents that score well on the same topic.
topTopicScore <- head(sort(documentTopicScore.m[,searchBestScore], decreasing = TRUE),10)
topVocType <- which(documentTopicScore.m[,searchBestScore] %in% topTopicScore, arr.ind = TRUE)
topVocType

endResult.df <- corpus.df[topVocType,]
View(endResult.df)

#The highest valued words in the topic our search scored best at.
documentTopWords.df <- mallet.top.words(topic.model, topicWordScore.m[searchBestScore,])
documentTopWords.df
