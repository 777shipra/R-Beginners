#<-------------- FILTERING DATAFRAME------------>

head(stats)

#looking for internet users

stats$Internet.users <2 #checking for countries with less than 2 
#the above will give results for every single row in BOLEAN form

#for getting only the rows with TRUE value
filter<-stats$Internet.users <2
#as filter is a vector of same length as stats when we will call it in []brackets
#it will give result for TRUE values
stats[filter,]
#doesn't display the rows with FALSE value


#checking for country whose birth rate above 40
stats[stats$Birth.rate>40,]

#for two conditions have to be TRUE
stats[stats$Birth.rate>40 & stats$Internet.users <2,]

#all the countries with high income
stats[stats$Income.Group=="High income",]

#checking levels for a group
levels(stats$Income.Group)

#checking all the values of country MALTA
stats[stats$Country.Name== "Malta",]
