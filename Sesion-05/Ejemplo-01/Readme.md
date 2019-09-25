`Data Science` > [`Programacion con R`]
## Visualizacion, graficos y tablas

### OBJETIVO
- Aprender a crear un histograma de categorias 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion05/Ejemplo-01`

#### DESARROLLO

Importamos la base de datos de muestra mpg
Importaremos la libreria ggplot2
Realizaremos un recuento de cuantos vehiculos de cada tipologia (compactos, suv, pickups, etc.) hay por cada marca (Toyota, Honda, etc.) 

```{r}
library(ggplot2)
head(mpg)
mpg<-mpg
vis <- ggplot(mpg, aes(manufacturer))
vis + geom_bar(aes(fill=class), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) 

```
