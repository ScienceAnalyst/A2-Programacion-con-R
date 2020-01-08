### Utilizando el Dataset de airquality.

# Investigar el detalle de cada columna del DataSet.

data("airquality")
??airquality

# Utilizando ciclo For y la sentencia IF/ELSE; 
    # Contar cuantos días el promedio de velocidad del aire es: Mayor a 7, Menor a 4 y 
    # cuántos registros existen dentro de ese rango(4-7).
      
      menor <- 0
      dentro <- 0
      mayor <- 0
      for(i in airquality$Wind){
        if(i > 7){
          mayor <- mayor + 1
        }else{
          if(i < 4){
            menor <- menor + 1
          }else{
            dentro <- dentro + 1
          }
        }
      }
     print(mayor)
     print(menor)
     print(dentro)
    
# Calcular el promedio total de la Columna Temp.

      total <- 0
      for(i in airquality$Temp){
        total <- (total + i)
      }
      print(total/(nrow(airquality)))
