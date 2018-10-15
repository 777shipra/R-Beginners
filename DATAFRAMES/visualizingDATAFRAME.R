#<-----------VISUALIZING DATASET----------->

qplot(data = stats,x=Internet.users,y=Birth.rate)

#enhancing

qplot(data = stats,x=Internet.users,y=Birth.rate,size=I(4),color=I("red"))

#we want income groups to be in different colors

qplot(data = stats,x=Internet.users,y=Birth.rate,size=I(4),color=Income.Group)

#analyse the graph 

''' like -> for people with high income have very low birth rate and more internet access
'''


