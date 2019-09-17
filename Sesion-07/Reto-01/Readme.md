`Data Science` > [`Programacion con R`]
## Ejercicios pr??cticos (storytelling); Kaggle

### OBJETIVO
- Seguir un ejercicio completo con una hipotesis. 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion07/Reto-01`

#### DESARROLLO
En este caso, plantearemos la hipotesis que las colonias del centro son las que tienen mas estaciones cercanas. Para ello, seguiremos los siguientes pasos: 
* Crearemos dos subsets de data: ecobicicentro y ecobicialrededor (hint: dplyr --> Colonia %in% c("A","B")). 
Las colonias centricas que contienen son: Doctores, San Pedro de los Pinos, Roma Sur, San Miguel Chapultepec, Napoles, Roma Norte, Hipodromo, Anzures, Escandon, Polanco, Juarez, Hipodromo Condesa, Centro, Condesa. 
Las colonias de alrededor son: Portales Norte, Anahuac Dos Lagos, Xoco, Tlacoquemecatl, Insurgentes San Borja, Del Valle Sur, Ampliacion Granada, Cuauhtemoc Pensil, Irrigacion, Actipan, Lomas Virreyes , General Pedro, Maria Anaya, Santa Cruz Atoyac, Ciudad de los Deportes.

* Usaremos las variables que creamos en el Reto01 de la Sesion03 de estaciones cercanas y compararemos entre ambos subsets la suma de cuantas de las colonias tienen una estacion cercana, dos, tres, cuatro y cinco (a??adiremos estas variables en los nuevos subsets). Para sumarlas, tendremos que usar la funcion "na.rm=T" para no tener en cuenta los valores nulos. 



