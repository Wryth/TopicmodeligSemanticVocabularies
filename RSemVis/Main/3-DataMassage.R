#Remove path of URLS.

#import sparql results----
#sparqlResults.df <- as.data.frame(sparqlResults$results)

x <- paste(foafText, sep = "", collapse = "//")
x <- apply(foafText,FUN = function(y){ if(y != "[#]  [back to top]") paste(foafText)})
x





conc <- 1
i <- 1
for (i in length(foafText)) {
  if(foafText[i] == "[#]  [back to top]"){
    conc[i] <- append(conc,paste(foafText[a:i]),after = length(conc))
    a = i
  }
  i = i+1
}
conc

f <- 1:5
conc <- append(conc, 0:1, after = 3)
f

x <- paste(foafText[1:3], sep = "", collapse = "")
x


r <- lapply(x, append(x))


#which(foafText, )

if(foafText[3] == "[#]  [back to top]") x = 3 


foafCollaps <- 
  paste()
which()
  
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
