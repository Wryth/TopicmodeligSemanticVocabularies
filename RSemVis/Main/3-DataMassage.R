#Remove path of URLS.

#import sparql results----
sparqlResults.df <- as.data.frame(sparqlResults$results)


#NOT IN USE----
#corpus <- lapply(corpus, margin, FUN = gsub(".+#(.+)>","\\1", corpus))
#corpus <- gsub(".+#(.+)>", "\\1", corpus)
#corpus <- do.call(gsub(".+#(.+)>",),)


#Remove URL paths----
corpus.m <- gsub(".+#(.+)>", "\\1", as.matrix(sparqlResults.df))

#Convert to datafram, paste content of columns as id----
corpus.df <- as.data.frame(corpus.m, stringsAsFactors = FALSE)
corpus.df <- within(corpus.df, conc <- paste(s,p,o, sep = " "))
