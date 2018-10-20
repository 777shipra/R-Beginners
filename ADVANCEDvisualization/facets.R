#using facets
#facets allow you to make alot of charts
library(ggplot2)
x<- ggplot(data=movies , aes(x=budgetmillions))
x+ geom_histogram(binwidth = 10,aes(fill=genre),
                  color="black")

#the above histogram is a little difficult to read but it would be easy if we make it for every value og genre


x+ geom_histogram(binwidth = 10,aes(fill=genre),
                  color="black") + facet_grid( genre~.) #genre as rows 
#too small to read

x+ geom_histogram(binwidth = 10,aes(fill=genre),
                  color="black") + facet_grid( genre~. , scales = "free")

#adding facets to scatter plot

x<- ggplot(data = movies,aes(x=criticrating ,y=audiencerating ,color=genre))

x+geom_point(size=3)

#facets:
x+geom_point(size=3)+
  facet_grid(genre~.)

x+geom_point(size=3)+
  facet_grid(.~year)

x+geom_point(size=3)+
  facet_grid(genre~year)

x+geom_point(aes(size=budgetmillions))+
  geom_smooth()+
  facet_grid(genre~year)

#we can see that y axis is from -50 to +100 every time so 

#<-----co ordinates------->

v<- ggplot(data = movies,aes(x=criticrating ,y=audiencerating ,color=genre,size=budgetmillions))

v+geom_point()


#setting the limit of x/y axis 
v+geom_point() +
  xlim(50,100)+
  ylim(50,100)

#the above won't work in the cases
#example

n<- ggplot(data = movies,aes(x=budgetmillions))
n+geom_histogram(binwidth = 10,aes(fill=genre),color="black")

n+geom_histogram(binwidth = 10,aes(fill=genre),color="black")+
  ylim(0,50)

#intead of that we will zoom 
n+geom_histogram(binwidth = 10,aes(fill=genre),color="black")+
  coord_cartesian(ylim=c(0,50))#the value will go as a range


#plotting the graph



