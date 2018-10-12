# <----------------GUIDE FOR THIS SECTION ------------->

# <-------- HOW TO DOWNLOAD/USE THE DATASET -------->
 [GO TO] (https://www.superdatascience.com/rcourse/) -> (scroll down to )SECTION4 -MATRICES -> download BASKETBALL DATASET\
 -> DOWNLOAD THE ZIP FILE\
 UNZIP THE S4-basketballdata.r file\
 open the file in R studio\
 select the whole code and run it\
 the data fill get loaded and then open a new R-script\

## OR


 THE FILE "S4-basketballdata.r" IS PRESENT IN THIS FOLDER AS WELL AS ZIP BASKETBALL DATASET FOLDER
 
 # what are MATRICES ?
 Most of the data will be given to us in the form of table format and to operate with tables it is important to know about MATRICES\
 
 we know that a vector in r is 
 
  
 22 | 33 | 44 | 55
 -- | -- | -- | --

this contain only one dimention with for indexes (1,2,3,4) but tables contain more set of dimentions\
(NOTE)-> matrices in general contain one or more dimention but in R one dimention is a vector as studied previously .\

a table will look like this , a table of two dimention containing 4 columns and 3 rows . so this is how a matrix look like\ 

22 | 33 | 44 | 55 
-- | -- | -- | --
11 | 32 | 45 | 67
34 | 64 | 78 | 90

### accessing the elements / INDEXATION 

LET this be matrix A\
so in matrix A above if u want to access any element the syntax would be -> NameOfMatrix[row number , colunm number]\
for example:- for element 78 -> A[3,3] which means get the element which is  on 3rd position of 3rd row inside matrix A\ 
for element 90 -> A[3,4]\
for element 22 -> A[1,1]\
for selecting complete 1st row -> A[1,]\ 
for selecting complete 3rd row -> A[,3]\

(NOTE) :- indexes in r starts with 1 not 0


