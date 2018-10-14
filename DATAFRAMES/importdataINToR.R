#<-----------IMPORTING DATASET INTO R --------------->

#uded for importing dataset 
?read.csv#read


# METHOD 1 -> SELECTING THE FILE MAUALLY
stats<- read.csv(file.choose())#execute it

''' this will open a pop up 
browse through the file 
click enter when u found the "DemographicData.csv" file on your system
'''
stats # printing dataframe

#METHOD 2 -> SETTING THE WORKING DIRECTORY AND READING THE FILE

#WORKING DIRECTORY -> SETTING WORKING DIRECTORY MEANS GIVING THE PATH OF THE DIRECTORY WHERE YOUR FILE IS PRESENT AND WHERE YOU WANT TO WORK
#IT IS EASY IN THE CASE WHERE YOUR .CSV FILE(the data you want to practice on) AND .R FILE (the .R file where you have to write r code for the relative dataset ) SHOULD BE INSIDE SAME FOLDER
#IT IS THE MOST GENERAL METHOD
#IT IS DIFFERENT FOR BOTH MAC AND WINDOW USERS

getwd()#to get the current directory path

#FOR MAC USERS 
setwd("/Users/shipra chauhan/Documents/R-udemy/DATAFRAMES")
rm(stats)# to remove the stats dataframe created above or you can override it
stats<- read.csv("DemographicData.csv")
stats


#FOR window USERS:
setwd("C:\\Users\\shipra chauhan\\Documents\\R-udemy\\DATAFRAMES")
rm(stats)
stats<- read.csv("DemographicData.csv")
stats

#<---------------EXPLORING THE DATASET-------------->

#to get number of rows
nrow(stats) #195 rows

#toget number of columns
ncol(stats) #5cols

# to get first five entries of data for general view of data
head(stats)
head(stats,n=8)# for first 8

# to get last 5 entries
tail(stats)
tail(stats,n=10)#for last 10

#checking the overall structure of dataset
str(stats)

?runif()#pronounced r-unif , stands for random variables distributed uniformly

#summary of dataset just like str but little more detailed
summary(stats)


#
