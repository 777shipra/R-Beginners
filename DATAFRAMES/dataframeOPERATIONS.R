#<------------BASIC OPERATIONS WITH DATAFRAME-------------->

# a data frame can store a mix of value type but a matrix can store elements of the same type

#SUBSETTING DATAFRAME

stats[1:10,]#show first 10 rows and all the columns
stats[3:9,]
stats[c(4,100),]#give only 4th and 100th roww in the data with all columns

# remember [] brackets

stats[1,]
is.data.frame(stats[1,]) #TRUE

''' in matrix if u extract 1 row element it gets converted into a vector
but in dataframe it stays a dataframe
so no need for drop=F 
'''
stats[,1]
is.data.frame(stats[,1]) #FALSE

'''  if u extract 1 column element it gets converted into vector
so there is a  need for drop=F 
'''
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])#TRUE

# DOING MATHEMATICAL OPERATIONS ON DATAFRAME

stats$Birth.rate* stats$Internet.users
stats$Birth.rate/ stats$Internet.users
stats$Birth.rate+ stats$Internet.users
stats$Birth.rate- stats$Internet.users

#adding a column in the dataset

stats$mycal<-stats$Birth.rate* stats$Internet.users #execute to add
head(stats)
summary(stats)


#recycling of value 
#the task is to add a column with only 5  values to the dataset of 195 rows

stats$xyz<-1:5
head(stats,n=12)#check for top 12 values of xyz$col 


#remove a column
stats$mycal<-NULL
head(stats)