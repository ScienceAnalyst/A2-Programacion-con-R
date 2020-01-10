# Instruccion: lee el dataset spotify de la sesion pasada


# Vemos el promedio de las columnas numericas
media_duration <- mean(spotify$duration_ms)
media_energy <- mean(spotify$energy)
media_danceability <- mean(spotify$danceability)

spotify %>% head(10)
## Primera cancion de nuestra lista
cancion <- spotify[5,c('acousticness','danceability','duration_ms','energy','song_title','artist')]
cancion

## Ejemplo 1: Checamos la primera condición de nuestra playlist
if (cancion$danceability >= media_danceability) {
  print('Seguir checando')
} else {
  print(paste0('No usar ', cancion$song_title, ' de ', cancion$artist))
  }


## Ejemplo 2: Checamos las dos primeras condiciones de nuestra playlist
if (cancion$danceability >= media_danceability) {
 if(cancion$duration_ms >= media_duration){
   print('Seguir checando')
 } else {
   paste0(cancion$song_title, ' de ', cancion$artist, ' es una canción corta')
 }
} else {
  print(paste0('No usar ', cancion$song_title, ' de ', cancion$artist))
}

