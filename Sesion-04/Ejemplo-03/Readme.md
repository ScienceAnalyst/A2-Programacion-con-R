`Data Science` > [`Programacion con R`]
## Exploracion de datos

### OBJETIVO
- Aprender a hacernos preguntas sobre un problema  

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion04/Ejemplo-03`

#### DESARROLLO

Importamos la base de datos de muestra mtcars
Creemos una variable categorica para clasificar aquellos carros que tienen ocho cilindros o diferentes a ocho.

```{r}
mtcars <- mtcars 
mtcars$ochocilindros <- ifelse(mtcars$cyl > 7, c("Yes"),c("No"))
```

