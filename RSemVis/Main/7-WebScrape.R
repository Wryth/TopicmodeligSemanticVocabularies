library(rvest)

foafOntology <- read_html("http://xmlns.com/foaf/spec/")
foafOntology

foafText <- foafOntology %>%
  html_nodes(".specterm p") %>%
  html_text() %>%
  as.character()
length(foafText)

foafTypes <- foafOntology %>%
  html_nodes(".specterm h3") %>%
  html_text()
length(foafTypes)
