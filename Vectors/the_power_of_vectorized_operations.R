#<----------------PART 1 ---------------->

x<-rnorm(5)


#printing all the random generated numbers different methods
x

#R-specific programming loop
#here i means the value not the index as in other programming languages
for (i in x){
  print(i)
}



#conventional programming loop
#here we are telling j to go 1 to 5 in x
for(j in 1:5){
  print(x[j])
}

#<-----------------------PART2------------->
#HERE WE ARE GOING TO LEARN DIFFERENCE BETWEEN VECTORIZED AND DE-VECTORIZED APPROACH

n<-100
a<-rnorm(n)
b<-rnorm(n)

#vectorized approach
c<-a*b

#de-vectorized approach
d<- rep(NA,n) #NA means something not applicable or null
#so d is a logical vector basically empty contains NA replicated n times
for (i in 1:n) {
  d[i]<-a[i]*b[i]
}


VECTORIZED                     DE-VECTORIZED
simple code                     little lengthy
faster                        slower than vectorized
#IN other languages such as c the opposite happens de-vectorized aproaches are faster
#R is a high level language so what happens that it delicating these vectorized operations to other languages such as C , FORTRAN at the background 
#basically R act as a wrapper and calling other languages to perform these operations
#in vectorized approach it is easy but in de vectorized approach it has to tell the programming language like c that a fuction being used and what type of variables are being passed like double variables , integer 1000 times or 100000 times thus it takes time.
#VECTORIZED FORM -> from the fundamentals of R we know that a vector contains similar times of elements . so R have to tell the other programming language only one time 














