library(dplyr)
mtcars <- mtcars 
mpghp <- prop.table(table(mtcars$cyl, mtcars$hp), 1)
mtcars$price <- mtcars$disp * 888
colnames(mtcars)