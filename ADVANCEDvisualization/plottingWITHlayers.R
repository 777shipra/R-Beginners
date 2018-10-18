#<------------plotting with layers---------->


ggplot(data = movies,aes(x=criticrating,y=audiencerating , color=genre))+
  geom_point()
# ggplot in R creates an object automatically and when ever you want to add a layer in this object or graph you do it by +

#in order to prove how it works as an object

p<-ggplot(data = movies,aes(x=criticrating,y=audiencerating , color=genre))
p #gives nothing as geometry layer not added

#points
p+geom_point()

#lines
p + geom_line()

#multiple layers

p+ geom_line()+geom_point()