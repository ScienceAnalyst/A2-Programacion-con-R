mpg <- mpg
vis <- ggplot(mpg, aes(class, cty))
vis + geom_boxplot(varwidth=T, fill="plum") 

vis + geom_boxplot(aes(fill=factor(cyl))) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) 