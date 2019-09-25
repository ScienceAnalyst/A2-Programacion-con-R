
library("readxl")
library("dplyr")
library("ggplot2")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

ggplot(ecobici, aes(x=Colonia)) +
  geom_bar()
