`Data Science` > [`Programacion con R`]
## Exploracion de datos

### OBJETIVO
- Aprender a hacernos preguntas sobre un problema  

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion04/Ejemplo-02`

#### DESARROLLO

Importamos la base de datos de muestra mtcars
Importaremos la libreria dplyr
Obtengamos una tabla de proporciones de cilindros (cyl) y horse power (hp) 

```{r}
library(dplyr)
mtcars <- mtcars 
mpghp <- prop.table(table(mtcars$cyl, mtcars$hp), 1)
```
Observamos que la mayor concentracion de vehiculos tiene ocho cilindros

Nos indican que el precio (en MXN) es equivalente a los dispositivos (disp) multiplicado por 888.
Creemos una nueva columna llamada price que liste los precios de cada vehiculo segun este calculo. 

```{r}
mtcars$price <- mtcars$disp * 888
```

Para verificar que funciono, buscaremos los nombres de las columnas de la tabla mtcars.
```{r}
colnames(mtcars)
```
