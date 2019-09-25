`Data Science` > [`Programacion con R`]
## Ejercicios practicos (storytelling); Kaggle

### OBJETIVO
- Aprender a estructurar un problema 

#### REQUISITOS
1. Contar con R studio.
1. Usar la carpeta de trabajo `Sesion07/Ejemplo-01`

#### DESARROLLO

El codigo para ver este ejercicio lo cubriremos a lo largo de la teoria. Sin embargo, aqui tenemos que investigar la informacion de peliculas y puntuaciones que usaremos para crear un algoritmo de recomendacion de peliculas. 
Entonces, cuales son el problema (que), el procedimiento (como) y el resultado esperado (para que). 

Problema: necesidad de encontrar una pelicula que sea de mi interes con el minimo tiempo posible. 

Como: crear un script con el dataset de peliculas: 
* Distribuirlo por generos nos ayudara a que esta busqueda sea mas agil, ya que disponemos de esta informacion y podemos aplicar un filtro rapido segun las preferencias del usuario que reducen notariamente el universo de peliculas.
* Tambien usaremos algoritmos de filtros colaborativos basados en la similitud entre usuarios. Esta funcion es conetenida en el package recommenderlab. Los metodos de similitud son coseno, pearson y jaccard. 

Finalidad: crear un modelo que tenga bajo margen de error sugiriendo peliculas. Eventualmente, podemos crear una pequena pagina en shiny para compartir este algoritmo de sugerencia. 

Limitaciones: generos presentes en la base de datos y limitado a las peliculas de la tabla. Ademas, hay que seguir actualizando la table con el avance de los anos.  
