
# Ejercicio 03  

# Vamos a usar la información de mtcars, ya disponible en R 
head(mtcars)

# Selecciona las variables nombre del carro, millas por galón y horse power 
library(dplyr) # Cargamos el paquete que nos permitirá hacer el ejercicio   
mtcars <- mtcars # Creamos la variable mtcars para poder hacer operaciones sobre esos datos 
select(mtcars, 'nombre carro', mpg, hp) # Usamos las comillas para que detecte que es una palabra compuesta 

# Filtra por aquellos vehículas que tengan hp mayor a 200 y su nombre contenga la letra "a" 
filter(mtcars, grepl("a", 'nombre carro') & hp > 200 )


