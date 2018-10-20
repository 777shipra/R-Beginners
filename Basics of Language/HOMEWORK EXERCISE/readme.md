# LAW OF LARGE NUMBERS
law of large number is

![LAW OF LARGE NUMBER](https://github.com/777shipra/R-Beginners/blob/master/Basics%20of%20Language/HOMEWORK%20EXERCISE/law%20of%20large%20number.png)

to explain this lets take an example of COIN TOSSES

lets say we have n coin tosses thats what the "n" in the above equation stands for so 
* again assuming n=100 (100 coin tosses)
* measuring for the value of heads / tails in the 100 coin tosses 
* 1 for heads and 0 for tails
* the value 1/0 is X in the above equation
* LHS OF THE EQUATION MEANS : that we are taking the average x of the value of n for example we have 50 heads of total 100 tosses so value would be = 0.5 
* RHS MEANS : the expected value of x

we can say that in the total 100 coin tosses the expected value of heads is 50 and tails is 50 that is 0.5

#####LLN states that as your n grows (n->infinty) your average of the actual value x (on the LHS) goes closer to the expected value E(x)

from above example we said that the e(x)=0.5 , lets see how the value of (heads/tails) approaches to E(x) value as we are increasing the value of n from 10 - 1000

NO OF COINT TOSSES | HEADS /TAIL VALUE (X bar n) | E(X) VALUE 
------------------ | --------------------------- | ----------
10 | 7 HEADS / 3 TAILS | 70%/30%
100 | 52 HEADS/48 TAILS | 52%/48%
1000 | 502 HEADS/ 498 TAILS | 50.2%/49.8%
