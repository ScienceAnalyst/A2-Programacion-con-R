`Data Science` > [`Programacion con R`]
## Visualizacion, graficos y tablas

### OBJETIVO
- Aprender a crear un grafico de densidad 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion05/Ejemplo-02`

#### DESARROLLO

Importamos la base de datos de muestra mpg
Importaremos la libreria ggplot2
Crearemos un grafico de densidad para evaluar la variable cty (city miles per gallon) en funcion del volumen de cilindros que tengan 

```{r}
library(ggplot2)
mpg<-mpg
vis <- ggplot(mpg, aes(cty))
vis + geom_density(aes(fill=factor(cyl)), alpha=0.8)

```
