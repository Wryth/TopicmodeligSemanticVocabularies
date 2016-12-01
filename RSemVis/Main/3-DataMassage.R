#Remove path of URLS.

#import sparql results as dataframe----
sparqlResults.df <- as.data.frame(sparqlResults.l$results)


x <- paste(foafText, sep = "", collapse = "//")
x <- lapply(foafText, function(y){ if(y != "[#]  [back to top]") paste(foafText)})

separate <- lapply(foafText,
                   function(y,i = 0,n = 0){
                     i = i + 1
                     if(y == "[#]  [back to top]")
                      paste(foafText[n:i])
                       n = i})


newList <- c()
separate <- lapply(foafText,
                   function(y,i = 0,n = 0){
                     i = i + 1
                     if(y == "[#]  [back to top]")
                      newList[i] <- paste(foafText[n:i])
                     n = i})


for (i in vector) {
  
  
}

foafText[3]



#exists("[#]  [back to top]",)
which()



if(foafText[3] == "[#]  [back to top]") x = 3 

#[#]  [back to top]

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
