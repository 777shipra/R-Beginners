#PACKAGES-> packages contain functions or some data that are relavent for certain task 
#Packages are collections of R functions data and compiled code in a well defined format . the directory where packages are stored is called the library.



#installing a package

#1. on the right side click install-> search for the package
#(further study)it sayes install from CRAN read from-> https://cran.r-project.org



#2. from console

install.packages("ggplot2")
#it is important to activate the package after installing otherwise commands won't work

#for example the following command will show error
?qplot #inside ggplot
?ggplot
?diamond#inside ggplot

#activating
library(ggplot2)


