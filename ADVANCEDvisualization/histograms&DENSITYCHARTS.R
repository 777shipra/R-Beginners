 #<-------------HISTOGRAMS AND DENSITY CHARTS---------->

p<-ggplot(data = movies,aes(x=budgetmillions))
p+geom_histogram(binwidth = 10) #setting x axis width 10 million 

#adding color
s+geom_histogram(binwidth = 10,aes(fill=genre)) #mapping because complex variable
#adding border
s+geom_histogram(binwidth = 10,aes(fill=genre),color="black")

#density charts
#need them sometimes

p+geom_density(aes(fill=genre))#stack behind each other ,not visible properly
#to stack on top of each other
p+ geom_density(aes(fill=genre),position = "stack")