#<---------INTRODUCTION TO QPLOT----------->

#used for ploting dataframe
?qplot 
#there is no documentation of qplot if u don't have ggplot

#install qplot which is inside ggplot
install.packages("ggplot")
library(ggplot2)

#some quick tricks to try

qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group , y=Birth.rate)
qplot(data = stats,x=Income.Group , y=Birth.rate ,size=I(3))
qplot(data = stats,x=Income.Group , y=Birth.rate ,size=I(3),color=I("blue"))
qplot(data = stats,x=Income.Group , y=Birth.rate ,geom = "boxplot")