
library("readxl")
library("dplyr")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

str(ecobici)

ecobici %>% 
  select(Colonia,nearbyStations6) %>%
  na.omit(nearbyStations6)
