# creamos funcion con numero de input
function.square <- function(number) {
  number**2
}

function.square(4)

function.square(c(2,3,4,5))

function.square(1:10)


# creamos funcion con string de input
function.saludo <- function() {
  'Hola'
}


function.saludo()

# creamos funcion con mas de un parámetro
function.saludopersonal <- function(NombrePersona, EdadPersona) {
  paste0('Hola, soy ', NombrePersona, ' y tengo ', EdadPersona)
}

function.saludopersonal('Ana', 24)

function.saludopersonal(24, 'Ana')

# creamos una funcion que te pregunte el numero que quieres elevar al cuadrado

function.squareinput <- function() {
  num_auxiliar <- readline(prompt = '¿Cuál numero quieres? ')
  resultado_auxiliar <- as.integer(num_auxiliar)**2
  resultado_auxiliar
}

function.squareinput()

# creamos una funcion con operaciones intermedias

function.calculanum <- function(x,y,z) {
   res <- x+y
   res <- res**3
   res <- res -z
   res
}

function.calculanum(1,1,1)





# creamos funcion para canciones nuevas de spotify
media_duration <- mean(spotify$duration_ms)
media_energy <- mean(spotify$energy)
media_danceability <- mean(spotify$danceability)


final.message <- function(duration, energy, danceability, song_title, artist){
  
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

final.message(300000,0.9,0.8,'Mi Canción','Artista Anónimo')

