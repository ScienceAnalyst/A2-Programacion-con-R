`Data Science` > [`Programacion con R`]
## Exploracion de datos

### OBJETIVO
- Aprender a hacernos preguntas sobre un problema  

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion04/Ejemplo-01`

#### DESARROLLO

Importamos la base de datos de muestra mtcars
Importaremos la libreria dplyr
Comprobemos si tiene registros vacios

```{r}
library(dplyr)
mtcars <- mtcars 
sum(is.na(mtcars))

```

Ya observamos que no hay registros vacios. 
Para seguir con el analisis de la tabla, veremos su estructura. 

```{r}
str(mtcars)
```
Asi podemos observar la tipologia de cada variable. Vemos que tenemos 32 observaciones (filas) y 14 variables (columnas). Tambien podemos ver que todas las variables son numericas, excepto el nombre de la marca que es un factor y mpg_type que es un caracter. 

Queremos comprar un carro y vamos a priorizar el consumo (mpg - millas por galon) y la velocidad (hp - horsepower). 
Cual es la correlacion entre ambas variables? 
```{r}
cor(mtcars$hp,mtcars$mpg)
```
Ambas variables estan correlacionadas negativamente, a mas velocidad menos millas por galon (correlacion negativa del 77%)