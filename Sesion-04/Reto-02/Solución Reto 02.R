
library("readxl")
library("dplyr")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

ecobici$estacion1 <- ifelse(ecobici$nearbyStations>=1, 1, 0)
ecobici$estacion2 <- ifelse(ecobici$nearbyStations2>=1, 1, 0)
ecobici$estacion3 <- ifelse(ecobici$nearbyStations3>=1, 1, 0)
ecobici$estacion4 <- ifelse(ecobici$nearbyStations4>=1, 1, 0)
ecobici$estacion5 <- ifelse(ecobici$nearbyStations5>=1, 1, 0)
ecobici$estacion6 <- ifelse(ecobici$nearbyStations6>=1, 1, 0)

ecobici %>% 
  select(Colonia, estacion1,estacion2,estacion3,estacion4,estacion5,estacion6) %>%
  group_by(Colonia)%>% 
  summarize(sum(estacion1),sum(estacion2),sum(estacion3),sum(estacion4),sum(estacion5),sum(estacion6)) %>%
  arrange(Colonia)
  
                 