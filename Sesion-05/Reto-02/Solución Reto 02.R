
library("readxl")
library("dplyr")
library("ggplot2")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

vis <- ggplot(ecobici, aes(Colonia))
vis + geom_density(aes(fill=factor(Colonia)), alpha=0.8)

