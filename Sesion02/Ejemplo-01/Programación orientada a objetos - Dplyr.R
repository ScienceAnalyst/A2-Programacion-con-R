
install.packages("dplyr")
library(dplyr)

datos <- read.csv("../data.csv", header=TRUE)
head(data)

sample_n(datos,8)

sample_frac(datos,0.1)

distinct(datos)

select(datos, Indice, Estado:A2008)

select(datos, -Indice, -Estado)

select(datos, starts_with("A"))
select(mydata, -starts_with("A"))

rename(datos, Indice1 = Indice)
datos <- rename(datos, Indice1 = Indice)

filter(datos, Indice1 == "A")

filter(datos, Indice1 %in% c("A", "B")) 

filter(datos, Indice1 %in% c("A", "B") & A2008 >= 1300000 )

filter(datos, Indice1 %in% c("A", "B") | A2008 >= 1300000)

filter(datos, !Indice1 %in% c("A", "B"))

filter(datos, grepl("kan", Estado))

summarise(datos, A2012_mean = mean(A2012))

summarise_at(datos, vars(A2012, A2013), funs(n(), mean, median))

arrange(datos, Indice1, A2012)

datos %>%
  group_by(Indice1)%>%
  summarise(Media2012 = mean(A2012, na.rm=TRUE),
            Media2014 = mean(A2014, na.rm=TRUE)) %>%
  arrange(desc(Media2012)) 
