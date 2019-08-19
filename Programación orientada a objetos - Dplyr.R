
## Introducci??n al package dplyr 
install.packages("dplyr")
library(dplyr)

# Dplyr nos ayudar?? a hacer consultas, agregaciones y filtros de datos de manera r??pida
# Su uso es similar al de SQL (dispone de funciones como select, left join, inner join y group by)
# Adem??s, dispone de algunas propias (filter, summarise, arrange y mutate)

# Importamos el fichero llamado data para poder operar con ??l a continuaci??n 
datos <- read.csv("data.csv", header=TRUE)
head(data) # Para visualizar los primeros registros 

# Muestra aleatoria de la base. El segundo componente indica el n??mero de filas que queremos
# Atenci??n! Esta muestra aleatoria cambiar?? cada vez que ejecutemos el c??digo, por lo que los resultados
# del an??lisis variar??n 
sample_n(datos,8)

# Tambi??n podemos importar informaci??n de manera aleatoria pero indicando el porcentaje que deseamos
sample_frac(datos,0.1) # 10%

# Si dudamos de la existencia de duplicados, podemos usar la funci??n distinct
distinct(datos)

# Para seleccionar informaci??n espec??fica de la tabla 
select(datos, Indice, Estado:A2008)

# Si nos es m??s f??cil indicar que queremos llevar todas las variables excepto alguna/s, lo indicaremos 
# con el s??mbolo "-" delante de la variable
select(datos, -Indice, -Estado) # ent este caso, solo el ??ndice y el Estado ser??n omitidos 

# Tambi??n podemos filtrar seg??n el primer car??cter 
select(datos, starts_with("A")) # Importar?? toda la informaci??n que contienen los a??os 
select(mydata, -starts_with("A")) # Esta funci??n traer?? la informaci??n complementaria al comando anterior

# Una de las maneras para cambiar el nombre de las columnas es la funci??n rename
rename(datos, Indice1 = Indice)
datos <- rename(datos, Indice1 = Indice) # As?? logramos que los cambios se guarden 

# La funci??n filter facilita la filtraci??n de informaci??n 
filter(datos, Indice1 == "A") # Informaci??n de aquellos Estados que su ??ndice es "A"

# M??ltiples criterios de selecci??n
filter(datos, Indice1 %in% c("A", "B")) 

# Filtrar por varias variables separando los comandos por "&" 
filter(datos, Indice1 %in% c("A", "B") & A2008 >= 1300000 )

# Para indicar condiciones disyuntivas (equivalente a "or" en SQL, ser??a "|" ) 
# Solo tiene que cumplir una de ambas condiciones para ser fitrado 
filter(datos, Indice1 %in% c("A", "B") | A2008 >= 1300000)

# Al igual que SQL, el s??mbolo "!" indica que no est??/cumpla una condici??n
filter(datos, !Indice1 %in% c("A", "B"))

# La funci??n grepl ayuda a extraer informaci??n de un campo en particular 
filter(datos, grepl("kan", Estado)) # Informaci??n de aquellos estados que contengan "kan" 

# Summarise es una funci??n muy ??til para hacer operaciones r??pidas sobre variables
summarise(datos, A2012_mean = mean(A2012)) # Media de todos los estados en 2012 

# Summarise_at nos permite escribir varias condiciones de agrupaci??n de las operaciones 
summarise_at(datos, vars(A2012, A2013), funs(n(), mean, median))

# Funci??n arrange para ordenar informaci??n seg??n varias variables
arrange(datos, Indice1, A2012) # Por defecto, esta ordenaci??n es ascendente 

# Otra manera de separar varias funciones es usar "%>%"
datos %>%
  group_by(Indice1)%>%
  summarise(Media2012 = mean(A2012, na.rm=TRUE), #NA remove para evitar tener registros vac??os que sesguen la informaci??n 
            Media2014 = mean(A2014, na.rm=TRUE)) %>%
  arrange(desc(Mean_2015)) 