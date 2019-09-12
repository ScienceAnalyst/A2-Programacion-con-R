
library("readxl")
ecobici <- read_excel("ecobici.xls")
head(ecobici)

ecobici <- ecobici %>%
  count(Colonia) %>%
  arrange (Colonia)

head(ecobici)