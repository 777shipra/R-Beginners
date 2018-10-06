#[]<- are used for accessing elements of a vector

w<-c("a","b","c","d","e")
w

w[1]#accessing first element
w[2]#accessing second element
w[-1]#accessing all except the last
w[1:3]#accessing 1 2 3 element
w[3:5]#accessing 3 4 5 element
w[c(1,3,5)]# getting 1 3 5 as a combined vector
w[c(-2,-4)]# getting element as combined except last 2nd and 4th
-3:-5# will give -3 -4 -5 as output
w[-3:-5]#try
w[7]#NA as greater than the elements in the vector

