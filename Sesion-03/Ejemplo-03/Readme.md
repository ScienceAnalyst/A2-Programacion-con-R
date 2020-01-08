`Data Science` > [`Programacion con R`]
## Funciones, condiciones y loops

### OBJETIVO
- Aprender a hacer un loop con IF ELSE 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion03/Ejemplo-01`

#### DESARROLLO

Vamos a crear una un funcion para validar si nuestra variable es superior a 40 
```{r}
variable <- 8
if (variable > 40){
  print("La variable es superior a 40")
} else {
  print ("La variable no es superior a 40")
}
```

Alternativamente, podemos usar la funcion ifelse, que nos ayudara a plantear el resultado a obtener si se cumple la condicion, y a continuacion el resultado a obtener si no se cumple la misma 
```{r}
ifelse(variable>40, "La variable es superior a 40", "La variable no es superior a 40")

``` 

Vamos a probar con dos condiciones dentro del if para conocer las funciones de AND y OR.
```{r}

#Condición con OR o AND

A <- 8
B <- 17
C <- 10
D <- 10
if (A > B || C == D){ # probar con AND (&)
print("TRUE")
} else {
print ("FALSE")
}

ifelse(A > B || C == D, "TRUE", "FALSE")

``` 
