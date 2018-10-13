#<--------------BUILDING YOUR FIRST MATRIX------------------------>
Matrices should be of same type like in vector otherwise it will convert the whole vector into a character
#METHODS TO BUILD A MATRIX IN R :-

#matrix()
?matrix
my.data<-1:20
my.data

A<- matrix(my.data,4,5)#data goes from columns 
A<- matrix(my.data,4,5,byrow = TRUE)#data goes from rows that is from left to right


#rbind()
#rbind function binds the data row by row
r1<- c("i","am","happy")
r2<- c("what","a","day")
 d<- rbind(r1,r2)
d


#vectors passed into the functions should be of same length otherwise recycling of the vector takes place
# with a warning
r1<- c("i","am")
r2<- c("what","a","day")
d<- rbind(r1,r2)
d

#cbind()
#cbind binds the function column by column
r1<- c("i","am","happy")
r2<- c("what","a","day")
d<- cbind(r1,r2)
d