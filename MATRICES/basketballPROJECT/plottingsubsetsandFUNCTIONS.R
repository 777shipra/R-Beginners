#<------------PLOTTING SUBSETS OF BASKETBALL DATASET------------->

#COPY PASTE FROM THE PREVIOUS CODE

matplot(t(MinutesPlayed),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players ,pch=15:18,col=c(1:4,6),horiz=F)


#MODIFYING THE CODE FOR BETTER MANUPULATION
#plotiing for 1st 2nd 3rd player

data<- MinutesPlayed[1:3,]
matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players[1:3] ,pch=15:18,col=c(1:4,6),horiz=F)

#plotting for 1st player
data<- MinutesPlayed[1,]
matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players[1] ,pch=15:18,col=c(1:4,6),horiz=F)


''' it gives a problem 
why-> what R is doing that it is thinking since we want only 1 dimentional object from the matrix
probably u want a vector but we dont want that we want a matrix 
since it gave an vector there was a problem in matplot
'''

#fix
data<- MinutesPlayed[1,,drop=F]
matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players[1] ,pch=15:18,col=c(1:4,6),horiz=F)





#<-------------USING FUNCTIONS------------------>
'''from above we can see that we are using the same lines of code again and again and we are copying and pasting it 
to avoid copy and paste everytime it would be easy if we have to call a function to avoid repeation 
that exactly functions are for -> functions are the set of or lines of code written to avoid repeation'''


#creating a function

#from above we can see that we are using this set of code

data<- MinutesPlayed[1,,drop=F]
matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players[1] ,pch=15:18,col=c(1:4,6),horiz=F)

#creating a function for this
myplot<-function(){
  data<- MinutesPlayed[1,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft", inset=0.01 , legend=Players[1] ,pch=15:18,col=c(1:4,6),horiz=F)
  
}
myplot()#will plot the same graph

''' myplot<- is an object , it is a name that we assigned to out function
function()-> it is function used for creating a function followed by {}
the set of lines if written inside{}'''

#now for every player we have to go inside the {} of the function and change the value
#making function general for all the player

myplot<-function(rows){
  data<- MinutesPlayed[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft", inset=0.01 , legend=Players[rows] ,pch=15:18,col=c(1:4,6),horiz=F)
  
}

myplot(1:5)#plot for first five players 
myplot(1:2)#plot for first two players
#rows is a variable that will take different values which we want to during the time of calling 
#to avoid going inside the function and changing the value

#now the above function is designed only for MinutesPlayed
#making the function general for all parameters

myplot<-function(DATA,rows){
  data<- DATA[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft", inset=0.01 , legend=Players[rows] ,pch=15:18,col=c(1:4,6),horiz=F)
  
}

#DATA is the variable used 
#calling function
myplot(Salary,1:2)#ploting salary for first two players
myplot(FieldGoalAttempts,1:5)#ploting FieldGoalAttempts for first five players

#we know that from the functions we used till now whenevr we used to forget to pass a parameter
#the function used to take default values

#setting default values for our function
myplot<-function(DATA,rows=1:10){
  data<- DATA[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft", inset=0.01 , legend=Players[rows] ,pch=15:18,col=c(1:4,6),horiz=F)
  
}

#now we have made rows default value 1:10
# even with no value provided by the user rows values would be taken default

#calling function
myplot(Salary)#plot for salary for default number of players that is 1:10