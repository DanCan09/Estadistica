# Daniela Alexandra Canabal Valdes 
# 24/02/2023
# Maestria Ciencias Forestales primer semestre

# HW_03
# Asignacion 3: Medidas de tendencia central



# Problema 1 --------------------------------------------------------------

# Aplicar las siguientes formulas para cada caso: las funciones sum (P) y prod (Q) estan disponibles en R

Xi <- c(6, 4, 1, 3)
Yi <- c(1, 3, 4, 2)

# Sumatoria

sum(Xi)
sum(Xi*Yi)

# productorio

prod(Xi)
prod(Xi*Yi)
prod((Xi^2)*(Yi^0.5))


# Problema 2 --------------------------------------------------------------

# Se enuncian dos conjunto de datos que contienen la alturas de plántulas (cm) producidas en vivero. El primero conjunto contiene solo 4 alturas y el segundo consta de 15.

GrupoA <- c(80, 90, 90, 100)
GrupoB <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)


# a. Sin realizar ningún calculo, cual grupo piensas que tiene una altura media mayor.

# El GrupoA es el que cuenta con una media mayor, debido a que cuenta con minimos mas altos en comparacion al GrupoB

# b. Ahora calcule la media para cada clase (en R). ¿Cuál grupo tiene la media en altura más grande? Coincide con su primera impresión?

mean(GrupoA)
mean(GrupoB)

# El GrupoA cuenta con una media mayor
# Si, coincide

# José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escala de 0 a 100. Sus primeros tres exámenes son: 87, 72, 85. ¿Qué necesita José para calificar en el 4to. examen para tener una media de 80 en los 4 exámenes?
  

# Problema 3 --------------------------------------------------------------

# José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escala de 0 a 100. Sus primeros tres exámenes son: 87, 72, 85. ¿Qué necesita José para calificar en el 4to. examen para tener una media de 80 en los 4 exámenes?

# a continuacion se realiza la operacion para despejar "x" que reprensenta la calificacion faltante.
Calificaciones <- c(87, 72, 85, 0)
mean(Calificaciones)

sum(Calificaciones) 
exam <- sum(Calificaciones)
media <- mean(Calificaciones)


