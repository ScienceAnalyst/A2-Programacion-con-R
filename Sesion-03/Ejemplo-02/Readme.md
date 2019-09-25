`Data Science` > [`Programacion con R`]
## Funciones, condiciones y loops

### OBJETIVO
- Aprender a hacer un loop con FOR 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion03/Ejemplo-02`

#### DESARROLLO

Vamos a crear una un funcion para obtener los primeros cien nombres de carros (variable) de mtcars (base de la informacion)

```{r}
head(mtcars)
mtcars <- mtcars 
for(i in 1:100) {print(mtcars$`nombre carro`[i])}

```

Primero tenemos que nombrar nuestra base para que quede guardada y operar sobre ella 