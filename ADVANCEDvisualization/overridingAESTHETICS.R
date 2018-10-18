#<-----------OVERRIDING AESTHETICS-------------->
 , 
p<-ggplot(data = movies,aes(x=criticrating,y=audiencerating,color=genre))
#SO HERE GEOM_POINT IS TAKING THE PROPERTIES OF p like x, y , size and plotting it 
p+geom_point()

#but we can override these properties (aesthetics of p)
#overriding the size
p+geom_point(aes(size=criticrating))

#override color
p+geom_point(aes(color=budgetmillions))

#despite of overriding q remains same 
q+geom_point()#back to original

#overiding x axis
q+geom_point(aes(x=budgetmillions)) + xlab("budgetmillions &&&") #updating the x axis name

#above we were mapping aesthetics but now setting aesthetics
q+geom_line(size=1) +geom_point()

#<--------MAPPING V/S SETTINGS------------->

p<-ggplot(data = movies,aes(x=criticrating,y=audiencerating))
p + geom_point()

#adding color two ways:
#MAPPING (used for more complex variables)

p+ geom_point(aes(colour=genre)) #mapping color to a complex variable , we use mapping

#setting
p+ geom_point(colour="DrakGreen") #simply setting color

#ERROR:
p+ geom_point(aes(colour="DarkGreen")) #it won't pass an error
#but the color of the geometry won't be green it will be something else


#example 2

#mapping 
p+geom_point(aes(size=budgetmillions))
#setting
p+geom_point(size=10)
#ERROR:
r+geom_point(aes(size=10))


