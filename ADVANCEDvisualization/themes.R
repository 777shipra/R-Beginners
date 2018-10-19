#THEMES

o<- ggplot(data = movies,aes(x=budgetmillions))
h<-o+geom_histogram(binwidth = 10,aes(fill=genre),
                 color="black")


#axis labels
h + xlab("money axis")+
  ylab("no of movies")+
  
#label formatting
  h+
  xlab("money axis")+
  ylab("no of movies")+
  theme(axis.title.x = element_text(color = "dark green",size=30),
        axis.title.y = element_text(colour = "red",size=30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size=20))


?theme
#legend formatting

h+
  xlab("money axis")+
  ylab("no of movies")+
  theme(axis.title.x = element_text(color = "dark green",size=30),
        axis.title.y = element_text(colour = "red",size=30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size=20),
        
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

#adding title to the plot


h+
  xlab("money axis")+
  ylab("no of movies")+
  ggtitle("movie budget distribution")
  theme(axis.title.x = element_text(color = "dark green",size=30),
        axis.title.y = element_text(colour = "red",size=30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size=20),
        
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(color="darkblue",size=40,family="courier"))