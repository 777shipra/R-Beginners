#using facets
#allows to plot multiple plots

library(ggplot2)
v<-ggplot(data = movies,aes(x=budgetmillions))
v+geom_histogram(binwidth = 10,aes(fill=genre),
                 color="black")

#facets
v+geom_histogram(binwidth = 10,aes(gill=genre),
                 colour="black")+
  facet_grid(genre~. , scales ="free" ) #ploting different plots for different values of genre
#scales is to enlarge the plots

#adding facets to scatterplots

w<- ggplot(data=movies,aes(x=criticrating,y=audiencerating,color=genre))
w+geom_point(size=3)


#facets
w+geom_point(size=3)+
  facet_grid(genre~.)

w+ geom_point(size=3)+
  facet_grid(.~year)

w+geom_point(size=3)+
  facet_grid(genre~year)

w+geom_point(aes(size=budgetmillions))+
  geom_smooth()+
  facet_grid(genre~year)

#in the above plot x co ordinates are okay but y co ordinates range from -50 to 150

#<-------CO ORDINATES----------->

m<- ggplot(data=movies,aes(x=criticrating , y=audiencerating,
                           size=budgetmillions,
                           color=genre))

m+geom_point()

#cutting off the limit
m+geom_point()+
  xlim(50,100)+
  ylim(50,100)

#but it won't work in the all the cases
#for example

n<-ggplot(data=movies,aes(x=budgetmillions))
n+geom_histogram(binwidth = 10,aes(fill=genre),color="black")

#adding limit
n+geom_histogram(binwidth = 10,aes(fill=genre),color="black")+
  ylim(0,50)

#instead of limit we will zoom 

n+geom_histogram(binwidth = 10,
                 aes(fill=genre),color="black")+
  coord_cartesian(ylim = c(0,50)) #the data is still there unlike in the limit method it was removed
#just a new layer is added in order to hide / zoom to the points we want

#adding it to the graph


w+geom_point(aes(size=budgetmillions))+
  geom_smooth()+
  facet_grid(genre~year)+
  coord_cartesian(ylim = c(0,100))

