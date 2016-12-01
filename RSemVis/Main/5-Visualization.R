library(ggplot2)
library(igraph)

docTopic.df <- as.data.frame(docTopic.m)
topicWords.df <- as.data.frame(topicWords.m)


#Document scores of topic V1
ggplot(docTopic.df, 
       aes(y = V92, x = 1:length(docTopic.df[,1]))) + 
  geom_point()

