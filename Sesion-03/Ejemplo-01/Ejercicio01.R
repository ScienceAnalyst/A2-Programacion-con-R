library(dplyr)

# Instruccion: lee el dataset spotify de la sesion pasada


# Vemos estructura
str(spotify)

# Seleccionamos columnas y vemos primeros 10 renglones  
spotify  %>% select('acousticness',
                'danceability',
                'duration_ms',
                'energy',
                'song_title',
                'artist') %>% head(10)
    

# Vemos el promedio de las columnas numericas
media_duration <- mean(spotify$duration_ms)
media_energy <- mean(spotify$energy)
media_danceability <- mean(spotify$danceability)

print(paste0('La duracion promedio es: ', media_duration))
print(paste0('La energia promedio es: ', media_energy))
print(paste0('La bailabilidad promedio es: ', media_danceability))

# Empezamos a crear nuestra playlist

## Primera cancion de nuestra lista
cancion <- spotify[1,c('acousticness','danceability','duration_ms','energy','song_title','artist')]
cancion

## Paso 1: vemos si cancion es bailable 
cancion$danceability >= media_danceability

### Paso 2: si es bailable, vemos si es corta o larga
cancion$duration_ms >= media_duration

#### Paso 3: si es una canción larga, vemos si es energica o no
cancion$energy >= media_energy

## Para la primera canción de nuestra playlist imprimimos resultado
print(paste0(cancion$song_title, ' de ', cancion$artist,' es una canción corta'))


## Quinta cancion de nuestra lista
cancion <- spotify[5,c('acousticness','danceability','duration_ms','energy','song_title','artist')]
cancion

## Paso 1: vemos si cancion es bailable 
cancion$danceability >= media_danceability

### Paso 2: si es bailable, vemos si es corta o larga
cancion$duration_ms >= media_duration

#### Paso 3: si es una canción larga, vemos si es energica o no
cancion$energy >= media_energy

## Para la quinta canción de nuestra playlist imprimimos resultado
print(paste0(cancion$song_title, ' de ', cancion$artist,' es una canción para calentamiento'))

# Tenemos que revisar las 2017 canciones
