library(ggplot2)
library(igraph)


docTopic.df <- as.data.frame(docTopic.m)


#Document scores of topic V1
ggplot(docTopic.df, 
       aes(y = V1, x = 1:length(docTopic.df[,1]))) + 
  geom_point()
