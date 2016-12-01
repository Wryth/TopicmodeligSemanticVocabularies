library(ggplot2)
library(igraph)

documentTopicScore.df <- as.data.frame(documentTopicScore.m)
topicWordScore.df <- as.data.frame(topicWordScore.m)


#Document scores of topic V1
ggplot(documentTopicScore.df, 
       aes(y = V1, x = 1:length(documentTopicScore.df[,1]))) + 
  geom_point()

