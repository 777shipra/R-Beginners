#<--------------ANALYSING THE DATASET FOR DIFFERENT PARAMETERS -------------->

#take the myplot function
myplot<-function(DATA,rows=1:10){
  data<- DATA[rows,,drop=F]
  matplot(t(data),type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft", inset=0.01 , legend=Players[rows] ,pch=15:18,col=c(1:4,6),horiz=F)
  
}




#salary of players

myplot(Salary)#ploting for salary of first ten players
myplot(Salary/Games)#ploting of salary of players per game 
myplot(Salary/FieldGoals)#plotting for salary per goal of players 


#in- game metrics 
myplot(MinutesPlayed)
myplot(Points)


#in game metrics normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)


#interesting observation
myplot(MinutesPlayed/Games)
myplot(Games)


#time is valuable
myplot(FieldGoals/MinutesPlayed)


#player style
myplot(Points/FieldGoals)