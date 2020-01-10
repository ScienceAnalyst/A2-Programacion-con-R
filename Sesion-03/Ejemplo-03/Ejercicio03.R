# Ejemplo for: elevar al cuadrado del 1 al 5

for (k in c(1,2,3,4,5)) {
  resultado <- k**2
  print(resultado)
}


# Ejemplo while
k = 0
while (k < 10) {
  print(k)
  k = k+1
}

# Vemos estructura de mtcars
mtcars %>% head(5)

# Imprimimos primeros 5 carros de mtcars
for(k in 1:5){
  carro_en_iteracion <- mtcars[k,]
  print(carro_en_iteracion)
}


# sintaxis mas sencilla de if else
edad = 24
ifelse(edad > 18, 'Mayor de edad', 'Menor de edad')

# Usamos un if adentro de un for para solo imprimir los que cumplan alguna condicion
for(k in 1:nrow(mtcars)){
  carro_en_iteracion <- mtcars[k,]
  if(carro_en_iteracion$cyl == 6 && carro_en_iteracion$carb > 1){
    print(rownames(carro_en_iteracion))}
}

