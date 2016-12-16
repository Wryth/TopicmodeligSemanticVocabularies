library(rJava)
library(mallet)

#Create a object of the sparql results.
mallet.object <- mallet.import(corpus.df[,1], 
                               corpus.df[,2],
                               "data/stoplist.csv",
                               FALSE)
                               #,token.regexp = "")#Du må definere denne for å få tall med også

#Create a topic model with X amount of topics.
topic.model <- MalletLDA(num.topics = 100)
class(topic.model)

#Put the massaged sparqlresults in the topic model.
topic.model$loadDocuments(mallet.object)

#Create a vocabulary of all disctinct words. 
vocabulary <- topic.model$getVocabulary()
vocabulary[1:50]
length(vocabulary)

#Count how often each word occures.
word.freqs <- mallet.word.freqs(topic.model)
head(word.freqs, 25)

#Specify Optimization parameters
topic.model$setAlphaOptimization(20, 50)

#Train the topic model.
topic.model$train(400)

documentTopicScore.m <- mallet.doc.topics(topic.model,
                                 smoothed = TRUE,
                                 normalized = TRUE)

#The weigth each word has in each topic.
topicWordScore.m <- mallet.topic.words(topic.model,
                                   smoothed = TRUE,
                                   normalized = TRUE)

#The highest valued words in a topic.
documentTopWords.df <- mallet.top.words(topic.model, topicWordScore.m[1,])
documentTopWords.df









