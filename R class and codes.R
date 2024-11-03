## Entering output
x <- 1 ## numeric vector
print(x) ## explicit printing
x
msg <- "hello" ##character vector

##Evaluation
x <- ## incomplete expression (the # is for comments)
x <- 5 ## nothing printed
x ##auto-printing occurs
print(x) ##explicit printing

##Printing
x <- 1:20 ##the : operator is used to create integer sequences
x

## Vectors and lists
## creating vectors
## The c() function can be used to create vectors of objects
x <- c(0.5, 0.6) ##numeric
x <- c(TRUE, FALSE) #logical
x <- c(T, F) ##logical
x <- c ("a", "b", "c") ##character
x <- 9:29 ##integer
x <- c(1+0i, 2+4i) ##complex

##Using the vector() function has 2 arguments which is the class and length
x <- vector("numeric", length = 10)
x

## Mixing objects
## When mixing objects of different classes in a vector, coercion occurs so that every element in the vector is of the same class. It creates the least common denominator
y <- c(1.7, "a") ## it turns it to a character since "a" is the least common denominator
y <- c(TRUE, 2) ## numeric, since in logic, TRUE is 1, FALSE is 0. Hence, 2 is less
y <- c("a", TRUE) ##character is the LCD as TRUE here is a character & not Logic
## Note: These are implicit coercions

## Explicit coercion
## Objects can be explicitly coerced from one class to another using the "as." functions, if available
## E.g for numeric: as.numeric (if applied to a numeric, nothing would happen)
##  for character:  as.character

x <- 0:6 ## sequence of 0 to 6
class(x) ## to know the class
##"integer" ## the class is printed
as.numeric(x)  ##coercion to numeric
## 0 1 2 3 4 5 6 ##print result of as.numeric(x)
as.logical(x)  ## to logical
## FALSE TRUE TRUE TRUE TRUE TRUE TRUE ## 0 is FALSE, greater than 0 is TRUE
as.character(x) ## to character
## "0" "1" "2" "3" "4" "5" "6" the print result

## NONSENSICAL COERCION RESULTS IN NAs
x <- c("a", "b", "c") ## a - z cannot be coerced to numeric
as.numeric(x) ## convert to numeric, but can not be since they are alphabets
## NA NA NA ## Hence, the values returns NA
## Warning message:
## NAs introduced by coercion
as.logical(x)  ## convert to logical
## NA NA NA ## prints NA since they are characters
as.complex(x) ## convert to complex
## it prints 0+0i 1+0i 2+0i 3+0i 4+0i 5+0i 6+0i

## Lists are a special type of vector that can contain elements of different classes. Lists are a very important data type in R.
x <- list(1, "a", TRUE, 1+4i) ## Elements of list are with 2 brackets, while other vectors are with one (1) bracket
x