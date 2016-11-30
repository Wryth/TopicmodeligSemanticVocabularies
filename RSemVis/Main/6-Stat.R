#
max(docTopic.df)


#Max score is: [document(row),topic(col)]
positionMaxScore.m <- which(docTopic.df==max(docTopic.df[]), arr.ind=TRUE)
positionMaxScore.m


#Document 1169, topic 940
#docTopic.df[1169, 940]


#Text of best scoring.
corpus.df[positionMaxScore.m[1],3]


#The highest valued words in a topic.
docTopWord.df <- mallet.top.words(topic.model, topicWords.m[positionMaxScore.m[2],])
docTopWord.df
