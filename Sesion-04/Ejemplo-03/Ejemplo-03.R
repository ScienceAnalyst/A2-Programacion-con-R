mtcars <- mtcars 
mtcars$ochocilindros <- ifelse(mtcars$cyl > 7, c("Yes"),c("No"))