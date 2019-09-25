
library("readxl")
library("dplyr")
library("ggplot2")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

ecobicicentro <- ecobici %>% 
  select(Nombre,Colonia,nearbyStations,nearbyStations2,nearbyStations3,nearbyStations4,nearbyStations5,nearbyStations6)%>% 
  filter(Colonia %in% c("Doctores", "San Pedro de los Pinos", "Roma Sur", "San Miguel Chapultepec",
                   "Napoles", "Roma Norte", "Hipodromo", "Anzures", "Escandon", "Polanco", 
                   "Juarez", "Hipodromo Condesa", "Centro", "Condesa") )


ecobicialrededor <- ecobici %>% 
  select(Nombre,Colonia,nearbyStations,nearbyStations2,nearbyStations3,nearbyStations4,nearbyStations5,nearbyStations6)%>% 
  filter(Colonia %in% c("Portales Norte", "Anahuac Dos Lagos", "Xoco", "Tlacoquemecatl",
                                               "Insurgentes San Borja", "Del Valle Sur", "Ampliacion Granada", 
                                               "Cuauhtemoc Pensil", "Irrigacion", "Actipan", "Lomas Virreyes", 
                                               "General Pedro", "Maria Anaya", "Santa Cruz Atoyac", 
                                               "Ciudad de los Deportes")) 

ecobicicentro$estacion1 <- ifelse(ecobicicentro$nearbyStations>=1, 1, 0)
ecobicicentro$estacion2 <- ifelse(ecobicicentro$nearbyStations2>=1, 1, 0)
ecobicicentro$estacion3 <- ifelse(ecobicicentro$nearbyStations3>=1, 1, 0)
ecobicicentro$estacion4 <- ifelse(ecobicicentro$nearbyStations4>=1, 1, 0)
ecobicicentro$estacion5 <- ifelse(ecobicicentro$nearbyStations5>=1, 1, 0)
ecobicicentro$estacion6 <- ifelse(ecobicicentro$nearbyStations6>=1, 1, 0)


ecobicialrededor$estacion1 <- ifelse(ecobicialrededor$nearbyStations>=1, 1, 0)
ecobicialrededor$estacion2 <- ifelse(ecobicialrededor$nearbyStations2>=1, 1, 0)
ecobicialrededor$estacion3 <- ifelse(ecobicialrededor$nearbyStations3>=1, 1, 0)
ecobicialrededor$estacion4 <- ifelse(ecobicialrededor$nearbyStations4>=1, 1, 0)
ecobicialrededor$estacion5 <- ifelse(ecobicialrededor$nearbyStations5>=1, 1, 0)
ecobicialrededor$estacion6 <- ifelse(ecobicialrededor$nearbyStations6>=1, 1, 0)


sum(ecobicicentro$estacion1,na.rm=T)
sum(ecobicialrededor$estacion1, na.rm=T)
sum(ecobicicentro$estacion2,na.rm=T)
sum(ecobicialrededor$estacion2, na.rm=T)
sum(ecobicicentro$estacion3, na.rm=T)
sum(ecobicialrededor$estacion3, na.rm=T)
sum(ecobicicentro$estacion4,na.rm=T)
sum(ecobicialrededor$estacion4, na.rm=T)
sum(ecobicicentro$estacion5,na.rm=T)
sum(ecobicialrededor$estacion5, na.rm=T)
sum(ecobicicentro$estacion6,na.rm=T)
sum(ecobicialrededor$estacion6, na.rm=T)

ecobicicentro<-ecobicicentro %>% 
  select(Colonia,estacion1,estacion2,estacion3,estacion4,estacion5,estacion6)%>% 
  mutate(estacion6 = coalesce(estacion6, 0)) %>% 
  mutate(estacion5 = coalesce(estacion5, 0)) %>% 
  mutate(estacion4 = coalesce(estacion4, 0)) %>% 
  mutate(estacion3 = coalesce(estacion3, 0)) %>% 
  mutate(estacion2 = coalesce(estacion2, 0)) %>% 
  mutate(estacion1 = coalesce(estacion1, 0)) %>% 
  mutate(estacion1+estacion2+estacion3+estacion4+estacion5+estacion6) %>%
  rename(totalest="estacion1 + estacion2 + estacion3 + estacion4 + estacion5 + estacion6") %>%
  group_by(Colonia) %>%
  summarise(totalest = sum(totalest))

ecobicialrededor<-ecobicialrededor %>% 
  select(Colonia,estacion1,estacion2,estacion3,estacion4,estacion5,estacion6)%>% 
  mutate(estacion6 = coalesce(estacion6, 0)) %>% 
  mutate(estacion5 = coalesce(estacion5, 0)) %>% 
  mutate(estacion4 = coalesce(estacion4, 0)) %>% 
  mutate(estacion3 = coalesce(estacion3, 0)) %>% 
  mutate(estacion2 = coalesce(estacion2, 0)) %>% 
  mutate(estacion1 = coalesce(estacion1, 0)) %>% 
  mutate(estacion1+estacion2+estacion3+estacion4+estacion5+estacion6) %>%
  rename(totalest="estacion1 + estacion2 + estacion3 + estacion4 + estacion5 + estacion6") %>%
  group_by(Colonia) %>%
  summarise(totalest = sum(totalest))

ggplot(ecobicicentro, aes(as.factor(Colonia), totalest)) +
  geom_bar(stat = "identity") + 
  labs(y = "Estaciones cercanas", x = "Colonia")

ggplot(ecobicialrededor, aes(as.factor(Colonia), totalest)) +
  geom_bar(stat = "identity") + 
  labs(y = "Estaciones cercanas", x = "Colonia")



