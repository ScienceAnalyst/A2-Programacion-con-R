`Data Science` > [`Programacion con R`]
## Visualizacion, graficos y tablas

### OBJETIVO
- Aprender a crear un boxplot

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion05/Ejemplo-03`

#### DESARROLLO

Importamos la base de datos de muestra mpg
Importaremos la libreria ggplot2
Crearemos un boxplot para evaluar la variable cty (city miles per gallon) en funcion de la clase de vehiculo

```{r}
mpg <- mpg
vis <- ggplot(mpg, aes(class, cty))
vis + geom_boxplot(varwidth=T, fill="plum") 
```

Ahora, usando la variable cilindros como factor podremos anadirla en el boxplot a partir del color 

```{r}
vis + geom_boxplot(aes(fill=factor(cyl))) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) 
```



