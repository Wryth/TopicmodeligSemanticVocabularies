#
max(documentTopicScore.df)


#Max score is: [document(row),topic(col)]
positionMaxScore.m <- which(documentTopicScore.df==max(documentTopicScore.df), arr.ind=TRUE)
positionMaxScore.m


#Document 1169, topic 940
#docTopic.df[1169, 940]


#Text of best scoring.
corpus.df[positionMaxScore.m[1],3]


#The highest valued words in a topic.
maxDocumentWordScore.df <- mallet.top.words(topic.model, topicWordScore.m[positionMaxScore.m[2],])
maxDocumentWordScore.df
