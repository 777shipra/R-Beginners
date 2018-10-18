# it started in the middle of the 19th century
#GRAMMER OF GRAPHICS is a book written in 1999

#a idol graph consists of

'''
DATA
AESTHETICS -> MAPPING OF THE DATA INTO THE CHART ,THINGS WHICH YOU CAN SEE (COLOURS, X/Y AXIS )
GEOMETRICS-> TYPE OF SHAPE TO REPRESENT DATA (TRIANGLES, POINTS)
ADDITIONAL LAYERS

STATISTICS
FACETS-> MULTIPLE OF THE SAME CHARTS BASED ON SOME CATEGORY
CO-ORDINATES-> X/Y OR POLAR , ZOOM IN ,ZOOM OUT
THEME -> REPRESENTATION 

'''
#FOR window USERS:
setwd("C:\\Users\\shipra chauhan\\Documents\\R-udemy\\ADVANCEDvisualization")
movies<- read.csv("Movie-Ratings.csv")
movies


head(movies)
#we can see the our heading contain ... this is because of the fact that R doesn't accept signs such as $&() so it represented them as ...
#to fix this 
colnames(movies)<-c("film","genre","criticrating","audiencerating","budgetmillions","year")
head(movies)
tail(movies)
str(movies)
summary(movies)

#we can see that YEAR is given as a numerical variable which is appropiate in case we want to do some mathematical operations with it
#but YEAR won't be used to perform mathematical operations 
#so we have to convert it into categorical variable 
# need to make factors of the YEAR 

movies$year<- factor(movies$year)
summary(movies)





