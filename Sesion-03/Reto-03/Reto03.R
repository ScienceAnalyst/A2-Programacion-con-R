# Solución Reto 03

media_duration <- mean(spotify$duration_ms)
media_energy <- mean(spotify$energy)
media_danceability <- mean(spotify$danceability)

final.message <- function(){
  
  duration <- readline(prompt = '¿Cuál es la duración de la nueva canción? ')
  energy <- readline(prompt = '¿Cuál es la energia de la nueva canción? ')
  danceability <- readline(prompt = '¿Cuál es la bailabilidad de la nueva canción? ')
  song_title<- readline(prompt = '¿Cuál es el nombre de la nueva canción? ')
  artist <- readline(prompt = '¿Quién es el artista de la nueva canción? ')

  
  mensaje_1 = paste0(song_title, ' de ', artist,' es una cancion para calentamiento')
  mensaje_2 = paste0(song_title, ' de ', artist, ' es una canción para ejercicio')
  mensaje_3 = paste0(song_title, ' de ', artist, ' es una canción corta')
  mensaje_4 = paste0('No usar ', song_title, ' de ', artist)
  
  ifelse(danceability >= media_danceability, 
         ifelse(duration >= media_duration,
                ifelse(energy >= media_energy, 
                       mensaje_2, 
                       mensaje_1), 
                mensaje_3) , 
         mensaje_4)
}

final.message()

