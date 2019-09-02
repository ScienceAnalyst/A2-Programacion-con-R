library(dplyr)
mtcars <- mtcars 
sum(is.na(mtcars))
str(mtcars)
cor(mtcars$hp,mtcars$mpg)