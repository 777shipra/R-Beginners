
#subsetting a vector
#sbsetting a vector always gives a vector

v<-c("a","b","c","d","e")
v #print
#access only 1st and 5th element
v[c(1,5)]
#access only 1st elemnet
v[1]


#subsetting a matrix
#subsetting a matrix doesn't always gives a matrix
#subsetting in basketball dataset

Games#print
#accessing 1 to 3 rows and 6 to 10 columns
Games[1:3,6:10]

#accesing data for 1st and 10th player
Games[c(1:10)]

#accessing data for all players for the years 2008 and 2009
Games[,c("2008","2009")]

#accessing for 1st player only
Games[1,]

#checking if the subset is a matrix
is.matrix(Games[1,])#FALSE
is.vector(Games[1,])#TRUE
'''WHY->
Because R is not just a programming language it is a language for mathematicians and statisticians
it is designed in a way where R thinks what type of data you would be needing for one dimentional data for analysis
this is a default behavior of the []brackets in R
HOW TO FIX ->
using drop parameter'''

Games[1,,drop=F] #by default it is true



