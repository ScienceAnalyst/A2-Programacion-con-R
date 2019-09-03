
# Analisis completo sobre series de tiempo
# Cargamos la data de muestra Airpassangers 
air <- AirPassengers
head(air)
str(air) # Ya es una serie de tiempo 

# Para saber en que fecha inicia la serie, aplicaremos la funcion start () 
start(air) # El primer componente indica el ano, el segundo el mes

# La funcion end () nos indicara cuando termina
end(air)

# Un componente importante es la frecuencia de la serie de tiempo: 
frequency(air) # Frecuencia mensual 

# Para ver los principales indicadores (media, mediana, maximo, etc.) usaremos la funcion summary()
summary(air)

# Podemos dibujar esta informacion en una linea de tiempo con la funcion plot() 
plot(air)

# Si queremos dibujar una linea regresiva que estime la tendencia usaremos la funcion abline() 
abline(reg=lm(air~time(air)))

# Paera conocer mas sobre el ciclo de la data a lo largo de los a??os 
cycle(air)

# Podemos agregar el ciclo a nuestro grafico y anadir la tendencia ano tras ano
plot(aggregate(air,FUN=mean)) # Claro crecimiento a lo largo de los anos 

# Para analizar el efecto estacionario, podemos usar boxplots que nos permitiran comprar por meses 
boxplot(air~cycle(air)) # La media y la varianza de julio y agosto es mucho mas alta que para el resto de meses
                        # Dado que la media varia por mes pero la varianza es pequena podemos concluir que hay un fuerte efecto estacionario

# Tenemos que eliminar la inecualidad en las varianzas (mediante logaritmos). Usaremos el Augmented Dickey-Fuller Test 
# para evaluar la hipotesis nula de que nuestra serie de tiempo no es estacionaria 
# Para la funcion adf.test() necesitamos descargar el package "tseries" 
install.packages("tseries")
library(tseries)
adf.test(diff(log(air)), alternative="stationary", k=0)

# La serie de tiempo es lo suficientemente estacionaria para modelarla
# Vamos a crear un grafico de correlaciones (ACF - autocorrelation function) 
acf(log(air)) 
# Vemos que la caida es muy suave, por lo que no hay muestras de que la poblacion sea estacionaria 
# Haremos la regresion sobre la diferencia en lugar de hacerlo directamente sobre el logaritmo 
# Funcion de autocorrelacion
acf(diff(log(air)))

# Funcion de autocorrelacion parcial
pacf(diff(log(air))) # Pico alto en el primer desfase y luego disminuye, por lo que el valor p deberia ser 0

# Creemos un modelo ARMA que haga una prediccion de los futuros diez anos 
(fit <- arima(log(air), c(0, 1, 1),seasonal = list(order = c(0, 1, 1), period = 12)))
pred <- predict(fit, n.ahead = 10*12)
ts.plot(air,2.718^pred$pred, log = "y", lty = c(1,3))
