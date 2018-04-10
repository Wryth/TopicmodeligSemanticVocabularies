#Requirements------------------------------------------------------------------
Have lates version of R and Rstudio.
Download the following packages: SPARQL, mallet, rjava, rvest, ggplot2
Can be installed in Rstudio

#Procedure------------------------------------------------------------------------------
"Main" contains all scrips needed.
To run the program run 
Main.r
or
track the scripts one by one in ascending order:
1-Functions.r
2-WebScraper.r
2-SPARQL.r
3-SparqlMassage.r
3-WebScraperMassage.r
4-FinalDataMassage.r
5-TopicModeling.r
6-TermCorrelation.r
6-Visualization.r
------------------------------------------------------------------------------
If you want to change the search query yourself
-Open 4-FinalDataMassage.r
-Look for naturalLanguagelVocabularySearch("X",corpus.df)
-Replace the Text where X is, with your own.
-Then run the whole program again.
-How ever the ontologies harvested will be the first 100 found on linken open vocabularies
and foaf terms in more details.