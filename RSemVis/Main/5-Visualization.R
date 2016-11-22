library(ggplot2)


doc.topic.df <- as.data.frame(doc.topic.m)


#Document scores of topic V1
ggplot(doc.topic.df, 
       aes(y = V1, x = 1:length(doc.topic.df[,1]))) + 
  geom_point()
