#Remove path of URLS.

#import sparql results as dataframe----
sparqlResults.df <- as.data.frame(sparqlResults.l$results)


x <- lapply(foafText, function(y){ if(y == "[#]  [back to top]") paste(foafText[1:3], sep = "", collapse = " ")})
length(x)

separate <- lapply(foafText,
                   function(y,i = 0,n = 0){
                     i = i + 1
                     if(y == "[#]  [back to top]")
                      toString(foafText[n:i])
                       n = i})


newList <- c()
separate <- lapply(foafText,
                   function(y,i = 0,n = 0){
                     i = i + 1
                     if(y == "[#]  [back to top]")
                      newList[i] <- paste(foafText[n:i])
                     n = i})


collapsByFoafType <- function(){
  newText <- c()
  n <- 1
  for(i in 1:length(foafText)) {
    if(foafText[i] == "[#]  [back to top]"){
      derp <- paste(foafText[n:i-1], sep = "", collapse = " ")
      newText <- c(newText, derp)
      n <- i + 1
    }
  }
  return(newText)
}
foafTypeText <- collapsByFoafType()
length(foafTypeText)
foafTypeText[1]


d <- Filter((function(e) e == "[#]  [back to top]"), foafText)
d[1:10]

#NOT IN USE----
#corpus <- lapply(corpus, margin, FUN = gsub(".+#(.+)>","\\1", corpus))
#corpus <- gsub(".+#(.+)>", "\\1", corpus)
#corpus <- do.call(gsub(".+#(.+)>",),)


#Remove URL paths----
#corpus.m <- gsub(".+#(.+)>", "\\1", as.matrix(sparqlResults.df))
corpus.m <- gsub("", "\\1", as.matrix(sparqlResults.df))

#Convert to datafram, paste content of columns as id----
corpus.df <- as.data.frame(corpus.m, stringsAsFactors = FALSE)
corpus.df <- within(corpus.df, conc <- paste(s,p,o, sep = " "))
