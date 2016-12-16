#Modifies webscraped Ontologie descriptions to a dataframe(name,discription)

foafTypeText.v <- collapsByOntologyType(foafText.v, "[#]  [back to top]")

#Append all different ontology typenames
webTypeNames.v <- foafTypes.v
#webTypeNames.v <- append(foafTypes.v)

#Append all Ontologytype Description
webTypeDescription.v <- foafTypeText.v
#webTypeDescription.v <- append(foafTypeText.v)

rm(foafText.v,foafTypeText.v, foafTypes.v)
