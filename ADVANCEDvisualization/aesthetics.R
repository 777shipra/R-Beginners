
library(ggplot2)
head(movies)
#aesthetics as we already studied is something that shows how our data is mapped to the plot
#like the x/y-axis

#this will just add the axis no points
ggplot(data = movies,aes(x=criticrating,y=audiencerating))


#for points add geometry

ggplot(data = movies,aes(x=criticrating,y=audiencerating))+
  geom_point()

#adding color

ggplot(data = movies,aes(x=criticrating,y=audiencerating , color=genre))+
  geom_point()


#adding size
#big dots for big budget movies
ggplot(data = movies,aes(x=criticrating,y=audiencerating , color=genre , size=budgetmillions))+
  geom_point()

