head(spotify) #Conocer como está estructurado el dataset
str(spotify)  #Conocer a detalle los datos de cada columna  
nrow(spotify) #Conocer el número de observaciones.
ncol(spotify) #Conocer el número de columnas.
mean(spotify$duration_ms) #Conocer la media de duración de las canciones en ms.
median(spotify$acousticness)#Conocer la mediana de acústica.

duracion <- ((spotify$duration_ms/1000)/60) #convertir el tiempo en ms a minutos.

#Graficar el historial de casos para conocer en qué rango de minutos existen más registros.
set.seed(123)
ejemplo <- rnorm(n = 10000, mean = 0, sd = 1)
hist(duracion, col='orange', breaks=40, 
     ylab = "Frecuencia", main = "Histograma ejemplo")
