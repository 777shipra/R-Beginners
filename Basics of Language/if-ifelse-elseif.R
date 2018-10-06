#<-----------Structure------------->
if(condition){
  statements
}

#<---------------Examples-------------->
x<-rnorm(1)#generating one random number , default parameters will give a number close to 1
if(x>1){
  print("greater than one")
}
#it is important to remove variables in r because executing many times may result in different results


rm(x)
x<-rnorm(1)#generating one random number , default parameters will give a number close to 1
if(x>1){
  print("greater than one")
}


#<------------------IF AND ELSE-------------------->
#this is called Nesting
rm(x)
x<-rnorm(1)#generating one random number , default parameters will give a number close to 1
if(x>1){
  print("greater than one")
}else{
  if(x>=-1){
    print("between -1 and 1")
  }else{
    print("less than -1")
  }
}

#<---------------------ELSEIF------------------->
#this is too said as chaining statement 
rm(x)
x<-rnorm(1)#generating one random number , default parameters will give a number close to 1
if(x>1){
  print("greater than one")
}else if(x>=-1)
  {
    print("between -1 and 1")
  }else{
    print("less than -1")
  }

