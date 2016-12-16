#Concatenate Ontology type descriptions accoringly. 
collapsByOntologyType <- function(ontologyText, breakText){
  newText <- c()
  n <- 1
  for(i in 1:length(ontologyText)) {
    if(ontologyText[i] == breakText){
      derp <- paste(ontologyText[n:i-1], sep = "", collapse = " ")
      newText <- c(newText, derp)
      n <- i + 2
    }
  }
  return(newText)
}