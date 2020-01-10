# Solución Reto 02


# Vemos el promedio de las columnas numericas
media_duration <- mean(spotify$duration_ms)
media_energy <- mean(spotify$energy)
media_danceability <- mean(spotify$danceability)

for (k in 1:nrow(spotify)) {
  cancion <- spotify[k,c('acousticness','danceability','duration_ms','energy','song_title','artist')]
  
  mensaje_1 = paste0(cancion$song_title, ' de ', cancion$artist,' es una cancion para calentamiento')
  mensaje_2 = paste0(cancion$song_title, ' de ', cancion$artist, ' es una canción para ejercicio')
  mensaje_3 = paste0(cancion$song_title, ' de ', cancion$artist, ' es una canción corta')
  mensaje_4 = paste0('No usar ', cancion$song_title, ' de ', cancion$artist)
  
  ifelse(cancion$danceability >= media_danceability, 
         ifelse(cancion$duration_ms >= media_duration,
                ifelse(cancion$energy >= media_energy, 
                       print(mensaje_2), 
                       print(mensaje_1)), 
                print(mensaje_3) ) , 
         print(mensaje_4))
}

