`Data Science` > [`Programación con R`]
## Funciones, condiciones y loops 

### OBJETIVO
- Aprenderás la tipología de objetos existentes 
- Aprenderás la creación de tablas
- Aprenderás ls solución de operaciones con objetos

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion02/Ejemplo-01`

#### DESARROLLO

Introducción al package dplyr 

```{r}
install.packages("dplyr")
library(dplyr)
```

Dplyr nos ayudará a hacer consultas, agregaciones y filtros de datos de manera rápida.  
Su uso es similar al de SQL (dispone de funciones como `select`, `left join`, `inner join` y `group by`).   
Además, dispone de algunas propias `(filter, summarise, arrange y mutate)`

Importamos el fichero llamado data para poder operar con él a continuación 

```{r}
datos <- read.csv("data.csv", header=TRUE)
head(data) # Para visualizar los primeros registros 
```

Muestra aleatoria de la base. El segundo componente indica el número de filas que queremos
_Atención!_.Esta muestra aleatoria cambiará cada vez que ejecutemos el código, por lo que los resultados
del análisis variarín 

```{r}
sample_n(datos,8)
```

También podemos importar información de manera aleatoria pero indicando el porcentaje que deseamos

```{r}
sample_frac(datos,0.1) # 10%
```

Si dudamos de la existencia de duplicados, podemos usar la funci??n distinct

```{r}
distinct(datos)
```

Para seleccionar información específica de la tabla 

```{r}
select(datos, Indice, Estado:A2008)
```

Si nos es más fácil indicar que queremos llevar todas las variables excepto alguna/s, lo indicaremos 
con el símbolo "-" delante de la variable

```{r}
select(datos, -Indice, -Estado) # ent este caso, solo el Índice y el Estado serín omitidos 
```

También podemos filtrar según el primer carácter 

```{r}
select(datos, starts_with("A")) # Importará toda la información que contienen los años 
select(mydata, -starts_with("A")) # Esta función traerá la información complementaria al comando anterior
```

Una de las maneras para cambiar el nombre de las columnas es la función rename

```{r}
rename(datos, Indice1 = Indice)
datos <- rename(datos, Indice1 = Indice) # Así logramos que los cambios se guarden 
```

La función filter facilita la filtración de información 

```{r}
filter(datos, Indice1 == "A") # Información de aquellos Estados que su índice es "A"
```

Multiples criterios de selección

```{r}
filter(datos, Indice1 %in% c("A", "B")) 
```

Filtrar por varias variables separando los comandos por "&" 

```{r}
filter(datos, Indice1 %in% c("A", "B") & A2008 >= 1300000 )
```

Para indicar condiciones disyuntivas (equivalente a "or" en SQL, sería "|" ) 
Solo tiene que cumplir una de ambas condiciones para ser fitrado 

```{r}
filter(datos, Indice1 %in% c("A", "B") | A2008 >= 1300000)
```

Al igual que SQL, el símbolo "!" indica que no cumpla una condición

```{r}
filter(datos, !Indice1 %in% c("A", "B"))
```

La función grepl ayuda a extraer información de un campo en particular 

```{r}
filter(datos, grepl("kan", Estado)) # Información de aquellos estados que contengan "kan" 
```

Summarise es una función muy ??til para hacer operaciones rápidas sobre variables

```{r}
summarise(datos, A2012_mean = mean(A2012)) # Media de todos los estados en 2012 
```

Summarise_at nos permite escribir varias condiciones de agrupación de las operaciones 

```{r}
summarise_at(datos, vars(A2012, A2013), funs(n(), mean, median))
```

Función arrange para ordenar información según varias variables

```{r}
arrange(datos, Indice1, A2012) # Por defecto, esta ordenaci??n es ascendente 
```

Otra manera de separar varias funciones es usar "%>%"

```{r}
datos %>%
  group_by(Indice1)%>%
  summarise(Media2012 = mean(A2012, na.rm=TRUE), #NA remove para evitar tener registros vacíos que sesguen la información 
            Media2014 = mean(A2014, na.rm=TRUE)) %>%
  arrange(desc(Media2012)) 
```
