

# Con la ayuda del package dplyr, haremos los siguientes comandos con una sola orden (Hint: usar "%>%")
# Usa la base de datos precargada llamada iris y calcula la media de la sepal.length y la sepal.width segun la especie.
# Finalmente, ordena los resultas alfabeticamente segun la especie. 
head(iris)
library
iris <- iris # Guardo la tabla en la memoria de objetos
iris %>% # Datos que usare
  group_by(Species) %>% # Variable de agrupacion
  summarise(Media_Sepal_Length = mean(Sepal.Length), # Media de sepal length
            Media_Sepal_Width = mean(Sepal.Width)) %>% # Media de sepal width
  arrange(Species) # Ordenar por especies (por defecto es orden ascendiente)
