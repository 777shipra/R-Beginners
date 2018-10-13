#<--------VISUALIZING basketball dataset USING matplot ------------>
#Plot the columns of one matrix against the columns of another.


#know about matplot()
?matplot

# TASK 1-> plotting progress of players/no of goals through their career

FieldGoals
#according to the defination the matplot function plots columns of a matrix one by one 
#but the fieldgoals contain years as columns
#so the task was to visualize progress for player per year
#sol-> flip the rows with columns and rows
#that means transposing the matrix with t() function

t(FieldGoals)


#plotting players
matplot(t(FieldGoals)) #plotted but not clear and attractive and difficult to understand



#adding details
matplot(t(FieldGoals),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players ,pch=15:18,col=c(1:4,6),horiz=F)
#legends are used for adding names to points to under which point for which player
#explore parameters with 
?legend
?matplot

#checking for goals per player
#can be found out for each player by FieldGoals/Games
t(FieldGoals/Games)
matplot(t(FieldGoals/Games),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players ,pch=15:18,col=c(1:4,6),horiz=F)

#checking for accuracy of players
matplot(t(FieldGoals/FieldGoalAttempts),type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft", inset=0.01 , legend=Players ,pch=15:18,col=c(1:4,6),horiz=F)

#check for salary/point players get paid
#points/min



'''
matplot is not used much because of its complexity 
for example -> we can see that we have two different lines of code for legend and matplot
in case of different col names given in legend can plot legends differently i.e names with different colors
we have to extra careful while writing the code

'''









