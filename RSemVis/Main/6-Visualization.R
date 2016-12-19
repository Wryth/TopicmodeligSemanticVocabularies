library(ggplot2)

documentTopicScore.df <- as.data.frame(documentTopicScore.m)
topicWordScore.df <- as.data.frame(topicWordScore.m)

#Plots the topic which our search entry scores best at.
#Our description is the one farthest to the right.
ggplot(documentTopicScore.df, 
       aes(y = documentTopicScore.df[,searchBestScore], x = 1:length(documentTopicScore.df[,1]))) + 
  geom_point()

