# THERE CAN BE MULTIPLE WAYS TO SOLVE THE PROBLEM BUT HERE IS ONE
#EXECUTE THE CODE FOR DIFFERENT VALUES OF N AND SEE HOW IT MOVES TO THE EXPECTED VALUE E(X)
n<-1000
counter<-0

for(i in rnorm(n)){
  if(i<=1 & i>=-1){
    counter<-counter+1
  }
}
answer<- counter/n
answer