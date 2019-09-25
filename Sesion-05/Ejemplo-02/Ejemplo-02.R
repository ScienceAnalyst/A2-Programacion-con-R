library(ggplot2)
mpg<-mpg
vis <- ggplot(mpg, aes(cty))
vis + geom_density(aes(fill=factor(cyl)), alpha=0.8)