# $-sign

#using the previous data

head(stats)

#selecting a row from dataset
#selecting angola birthrate

stats[3,3]
    #or
stats[3,"Birth.rate"]

stats["Angola",3]#WRONG-> angola is a column not the index name (closely look the dataset)
#dataset have rows as numbers and columns can be named

#$ -sign is another way to select columns in dataset

stats$Internet.users #will give all the data
        #or
stats[,"Internet.users"]


stats$Internet.users[2]# will give 2nd value

#to understand the factors in summary
summary(stats)
levels(stats$Income.Group) #give the names of all the factors
    