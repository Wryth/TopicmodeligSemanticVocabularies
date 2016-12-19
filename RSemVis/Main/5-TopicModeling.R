library(rJava)
library(mallet)

#Create a object of the sparql results.
mallet.object <- mallet.import(corpus.df[,1], 
                               corpus.df[,2],
                               "data/stoplist.csv",
                               FALSE)
                               #,token.regexp = "")#

#Create a topic model with X amount of topics.
topic.model <- MalletLDA(num.topics = 100)
class(topic.model)

#Put the massaged results in the topic model.
topic.model$loadDocuments(mallet.object)

#Specify Optimization parameters
topic.model$setAlphaOptimization(20, 50)

#Train the topic model.
topic.model$train(400)

#Matrix of vocabulary term scors distributed over topic.
documentTopicScore.m <- mallet.doc.topics(topic.model,
                                 smoothed = TRUE,
                                 normalized = TRUE)

#The weigth each word has in each topic.
topicWordScore.m <- mallet.topic.words(topic.model,
                                   smoothed = TRUE,
                                   normalized = TRUE)


rm()
