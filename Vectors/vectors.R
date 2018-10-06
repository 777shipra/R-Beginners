
#<---------------VECTOR----------------->


MyFirstVector<-c(1,2,3,4,5)
#c is function that combines all the values to put
MyFirstVector



#checking whether the vector is numeric vector or not ?
is.numeric(MyFirstVector)
#TRUE


#checking whether they are integer or not?
is.integer(MyFirstVector)
#FALSE because my default R stores as double

#checking for double ?
is.double(MyFirstVector)
#TRUE

V2<-c(3L,4L,5L)


#checking whether the vector is numeric vector or not ?
is.numeric(V2)
#TRUE

#checking for double ?
is.double(V2)
#FALSE


V3<-c("R","F","G")

#checking whether the vector is numeric vector or not ?
is.numeric(V3)
#FALSE

#checking whether the vector is CHARACTER vector or not ?
is.character(V3)
#TRUE


#<-------------------------------------------->


V4<-c(3,4,5,"yes")

V4
#the output will convert all the doubles into characters because a vector can always be of same type and also that it is easy to convert doubles/integers into characters and not the opposite.
#so R by default converts everything into character by just adding "" on the double/integer values in V4


#<-------------other ways of creating vectors--------------->
seq()#sequence just like ":"
rep()#replicate


#SEQUENCE
seq(1,15)
#get a vector from 1 to 15
#this is quite same as 1:15
seq(1:15)
#this is give you the same result however is WRONG

seq(1,15,2)
#why sequence -> gives more flexibility than :
#like the above code will give you 1 to 15 number with a step of two like 1,3,5....15
#not achievable with :

z<-seq(1,100,4)
z


#REPLICATE
rep(3.50)
#replicate number 3 50 times
z<-rep(2,100)
x<-rep(z,10) #replicating variables
x

rep("yes",5)#replicating characters




