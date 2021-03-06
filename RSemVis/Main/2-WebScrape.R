#Scrapes a given website discribing ontologie types for text.

library(rvest)

foafOntology.l <- read_html("http://xmlns.com/foaf/spec/")

foafText.v <- foafOntology.l %>%
  html_nodes(".specterm p") %>%
  html_text() %>%
  as.character()
length(foafText.v)

foafTypes.v <- foafOntology.l %>%
  html_nodes(".specterm h3") %>%
  html_text()
length(foafTypes.v)

rm(foafOntology.l)