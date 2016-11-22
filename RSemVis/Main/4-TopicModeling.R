library(rJava)
library(mallet)

mallet.object <- mallet.import(corpus$p, 
                               corpus$id,
                               "data/stoplist.csv",
                               FALSE)
                               #,token.regexp = "")#Du må definere denne for å få tall med også

topic.model <- MalletLDA(num.topics = 10)
class(topic.model)

topic.model$loadDocuments(mallet.object)

vocabulary <- topic.model$getVocabulary()
vocabulary[1:50]
length(vocabulary)

word.freqs <- mallet.word.freqs(topic.model)
head(word.freqs, 25)

topic.model$setAlphaOptimization(20, 50)

topic.model$train(400)



doc.topic.m <- mallet.doc.topics(topic.model,
                                 smoothed = TRUE,
                                 normalized = TRUE)

topic.word.m <- mallet.topic.words(topic.model,
                                   smoothed = TRUE,
                                   normalized = TRUE)
head(doc.topic.m, 25)

