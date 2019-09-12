`Data Science` > [`Programacion con R`]
## Programacion orientada a objetos  

### OBJETIVO
- Checar los nulos (o campos vac??os) de una variable
- Crear nuevas variables 
- Usar la funcion ifelse para crear una variable condicionada al valor de otra 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion03/Reto-01`

#### DESARROLLO
Con la informacion de nearbyStations sabemos que estaciones tienen otras estaciones cerca. Estas columnas se repiten por cada estacion cercana, existiendo hasta seis potenciales estaciones. Veamos sobre el total de la base de 480 estaciones, hasta cuantas estaciones cercanas tienen (hint: checando la suma de NANs sabemos cuales no tienen estaciones cercanas). A continuacion, crearemos seis nuevas variables (estacion1, estacion2, estacion3, estacion4, estacion5, estacion6) que indiquen en 1 si tiene una estacion cercana y 0 si no existe esta estacion cercana (hint: usar la funcion ifelse).