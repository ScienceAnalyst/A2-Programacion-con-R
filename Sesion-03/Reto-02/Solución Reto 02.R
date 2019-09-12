
library("readxl")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

for(i in ecobici$latitud>19.423396){
  print(i)
}
