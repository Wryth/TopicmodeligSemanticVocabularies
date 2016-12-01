library(rvest)

foafOntology <- read_html("http://xmlns.com/foaf/spec/")
foafOntology

lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")


foafOntology %>%
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()
