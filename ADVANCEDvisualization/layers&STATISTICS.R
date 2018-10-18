# <------------LAYER TIPS------------->

p<-ggplot(data=movies,aes(x=audiencerating))
p+ geom_histogram(binwidth=10 , fill="white",color="blue")

#another way;

p<- ggplot(data=movies)

p+ geom_histogram(binwidth = 10,aes(x=audiencerating),fill="white",color="blue")

#chart 4 

t+ geom_histogram(binwidth = 10,
                  aes(x=criticrating),
                  fill="white",
                  color="blue")

#chart 5 (skeleton plot)
#very rare

#when u want to create a plot but want to use different datasets on that plot

p<-ggplot()


#<-------------STATISTICAL TRANSFORMATION------------>

?geom_smooth

p<- ggplot(data=movies,aes(x=criticrating , y= audiencerating ,color="genre"))

p+ geom_point()+geom_smooth(fill=NA)

#boxplots
p<- ggplot(data=movies,aes(x=genre , audiencerating ,color="genre"))
p+geom_boxplot() #having boxplots

p+geom_boxplot(size=1.2)#increasing size
p+geom_boxplot(size=1.2)+geom_point()#having points too but difficult to understand


#trick
p+geom_boxplot(size=1.2)+geom_jitter() #throw the points randomly 


#another way:
p+geom_jitter()+geom_boxplot(size=1.2,alpha=0.5) 


