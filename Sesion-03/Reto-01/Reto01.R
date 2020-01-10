# Solución a Reto 01 



# Vemos el promedio de las columnas numericas
media_duration <- mean(spotify$duration_ms)
media_energy <- mean(spotify$energy)
media_danceability <- mean(spotify$danceability)

spotify %>% head(10)
## Primera cancion de nuestra lista
cancion <- spotify[1,c('acousticness','danceability','duration_ms','energy','song_title','artist')]
cancion

## Checamos todas las condiciones de nuestra playlist

if (cancion$danceability >= media_danceability) {
  if(cancion$duration_ms >= media_duration){
    if(cancion$energy >= media_energy){
      print(paste0(cancion$song_title, ' de ', cancion$artist, ' es una canción para ejercicio'))
    }else {
      print(paste0(cancion$song_title, ' de ', cancion$artist,' es una cancion para calentamiento'))
    }
  } else {
    paste0(cancion$song_title, ' de ', cancion$artist, ' es una canción corta')
  }
} else {
  print(paste0('No usar ', cancion$song_title, ' de ', cancion$artist))
}


