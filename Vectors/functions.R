#? <-help , gives the discription of the function 
?rnorm() #<-execute

#different ways of executing functions in R

#lets take rnorm(n, mean = 0, sd = 1) 
rnorm(10)#it will take by default values of mean and sd that is 0 and 1 as shown above





rnorm(10,10,8)#the output would be different as values of mean and sd are given
#values should be given in order as default





rnorm(n=10, mean = 10, sd = 8)#passing named parameters to the functions
#it allows you to pass parameters not in sequence
rnorm(n=10, sd = 10, mean = 8)
#it even allows you to skip some variable
rnorm(n=10, sd = 10)


#TRY seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),length.out = NULL, along.with = NULL)
#TRY rep(x, times = 1, length.out = NA, each = 1)
?rep()

