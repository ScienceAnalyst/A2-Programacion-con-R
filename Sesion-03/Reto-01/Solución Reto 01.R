
library("readxl")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

sum(is.na(ecobici$nearbyStations))
ecobici$estacion1 <- ifelse(ecobici$nearbyStations>=1, 1, 0)

sum(is.na(ecobici$nearbyStations2))
ecobici$estacion2 <- ifelse(ecobici$nearbyStations2>=1, 1, 0)

sum(is.na(ecobici$nearbyStations3))
ecobici$estacion3 <- ifelse(ecobici$nearbyStations3>=1, 1, 0)

sum(is.na(ecobici$nearbyStations4))
ecobici$estacion4 <- ifelse(ecobici$nearbyStations4>=1, 1, 0)

sum(is.na(ecobici$nearbyStations5))
ecobici$estacion5 <- ifelse(ecobici$nearbyStations5>=1, 1, 0)

sum(is.na(ecobici$nearbyStations6))
ecobici$estacion6 <- ifelse(ecobici$nearbyStations6>=1, 1, 0)
