#<--------NAMING INDEXES------------->

#TAKE A NAMED VECTOR
charlie<-1:5
charlie


#give names
names(charlie) #it is null write now because no names has been assigned yet

names(charlie)<- c("a","b","hello","yes","c")
charlie

#checking again
names(charlie)



#accessing the element
charlie["hello"]#it will give 3 as output and "hello" index name


#clear names
names(charlie)<-NULL
charlie



#<--------NAMING MATRIX OF DIMENTION 1---------------->

temp.vec<-rep(c("a","b","hello"),each=3)
temp.vec

#3 X 3 matrix with no names assigned to the indexes
bravo<- matrix(temp.vec,3,3)
bravo 


#giving rows/columns indexes name
#rowname()
rownames(bravo)<-c("giving","rows","names")
bravo

#colnames()
colnames(bravo)<-c("giving","columns","names")
bravo

#accessing a variable
bravo["rows","columns"]

#changing the values
bravo["rows","columns"]<-0
bravo["rows","columns"]


#checking row name individually
rownames(bravo)
colnames(bravo)

#clearing names
rownames(bravo)<-NULL
colnames(bravo)<-NULL






