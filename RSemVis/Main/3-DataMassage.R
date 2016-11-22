#Remove path of URLS.

#corpus <- sapply(corpus, margin, FUN = gsub(".+#(.+)>","\\1"))
#corpus <- gsub(".+#(.+)>", "\\1", corpus)


x <- "<http://www.openlinksw.com/virtrdf-data-formats#default-iid>"

ss <- gsub(".+#(.+)>", "\\1",x)
ss
