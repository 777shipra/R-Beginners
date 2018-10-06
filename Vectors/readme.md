# VECTOR


## A vector is the sequence of data element of the same basic type. The name vector comes from linear algebra because R being a statistical language .

## for example
 11 22 123 45 67 78 9 (this is a NUMERIC VECTOR) basically a sequence containing numbers either integer or double type.
if u have studied other programming languages a vector is just same as an array just the index section begins from 1 not 0

 "a" "e" "r" "g" "y" (this is a CHARACTER VECTOR of length 5)
index being 1 2 3 4 5

 In R everything is stored in form of vectors , even a single number is stored as a vector .
27   number 27 is a vector of length 1

#VECTORIZED OPERATIONS

## R being a vectorized programming language makes it very easy to perform arithmetic operations between two vectors (arrays) as compared to other programming languages

## for example
let there be two NUMERIC vectors of length 10

| 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |

| 1 | 5 | 6 | 3 | 8 | 9 | 5 | 88 | 77 | 6 |

and the task is to add individual elements of the vectors like (2+1) for the first one and till the last
if you are from other programming backgrounds the task will involve :
1. a loop circulating through indexes
2. adding the values till loop terminates

but in R it's just like adding two variables
for example
```
x<-c(1,2,3)
y<-c(3,4,5)
x+y

```

similarly for other arithmetic operations such as - * / > < .....

## RECYCLING OF vectors

Now suppose we want to do operations with two vectors of different length

| 2 | 3 | 4 | 5 | 6 |
           +
| 1 | 5 | 6 | 3 | 8 | 9 | 5 | 88 | 77 | 6 |

In such case R will perform RECYCLING of vectors that is repeating the same set of the first vector again till the end and perform the operations such that the length becomes equal to the second vector

| 2 | 3 | 4 | 5 | 6 | 2 | 3 | 4 | 5 | 6 |  
                   +
| 1 | 5 | 6 | 3 | 8 | 9 | 5 | 88 | 77 | 6 |   

but  what when the set will not be repeated completely like

| 2 | 3 | 4 | 5 | 6 |      +      | 1 | 5 | 6 | 3 | 8 | 9 | 5 | 88 | 77 |
Now the first vector is of length 5 and second is of length 9

now what ? well .... RECYCLING will take place but with a warning
| 2 | 3 | 4 | 5 | 6 | 2 | 3 | 4 | 5 |
                +
| 1 | 5 | 6 | 3 | 8 | 9 | 5 | 88 | 77 |

