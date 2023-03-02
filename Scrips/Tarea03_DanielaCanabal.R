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
Calificaciones <- c(87, 72, 85)


# 80 = (87+72+85+?x)/4
# se realiza primero la sumatoria que se encuentra dentro de los parentesis.
sum(87, 72, 85)

# 80*4 = ?X + 244
80*4
# 320-244= ?x 
320-244

# El resultado faltante que Jose necesita es igual a 76.

Jose <- c(87,72, 85, 76)
mean(Jose)


# Problema 4 --------------------------------------------------------------

# El comité escolar de una pequeña ciudad quiere determinar el número promedio de niños por hogar en su ciudad. Hay 50 hogares en la ciudad. Ellos dividen el total número de niños en la ciudad por 50 y determine que el número promedio de niños por hogar es 2.2. ¿Cuál de lo siguientes enunciados debe ser verdad?

# a) La mitad de los hogares de la ciudad tienen más de 2 hijos.
# b) Hay un total de 110 niños en la ciudad.
# c) El número más común de niños en un hogar es 2.2.
# d) Ninguna de las anteriores.

110/50
# la respuesta correcta es el inciso B, 



# Problema 5 --------------------------------------------------------------

#El numéro de semillas germinadas (Germinaciones) que se encontraron en las cajas petri se muestran en el siguiente cuadro.

germinacion <- c(5, 6, 7, 8, 9)
petri <- c(1, 3, 5, 3, 1)
Germinacion <- data.frame(germinacion, petri)
Germinacion
median(Germinacion$petri)
median(Germinacion$germinacion)


# a) ¿Qué tipo de gráfico podrías usar para visualizar estos datos?

# los datos se puede visualizar con un grafico de caja
boxplot(Germinacion$germinacion, col = "pink")

# b) ¿Cuál es la media? Muestre su trabajo o código, o explique cómo obtuvo su respuesta.
mean(Germinacion$petri)
mean(Germinacion$germinacion)

# La media de las cajas petri es de 2.6 y la de germinaciones es de 7


# La mediana de germiancion en 7 y la de cajas petri es 3
median(Germinacion$petri)
median(Germinacion$germinacion)


# Problema 6 --------------------------------------------------------------

# En este problema, exploramos el efecto sobre la media, la mediana y la moda de: 1) sumar el mismo número a cada valor de datos, y 2) de multiplicar cada valor de datos por el mismo número.
# Use el siguiente conjunto de datos
set <- c(2, 2, 3, 6, 10)

# a) Calcule la moda, la mediana y la media.
library(modeest)
mfv(set)
median(set)
mean(set)

# b) Suma 5 a cada uno de los valores de los datos. Calcule la moda, la mediana y la media.
set.5 <- (set+5)
set.5
mfv(set.5)
median(set.5)
mean(set.5)

# c) Compare los resultados de las partes (a) y (b). En general, ¿cómo crees quela moda, la mediana y la media se ven afectadas cuando se agrega la misma constante a cada valor de datos en un conjunto?



# d) Multiplique cada valor de los datos por 5. Calcule la moda, la mediana y la media.
# e) Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda, La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto se multiplica por la misma constante?

# Los vaores se siguen comportando de la misma manera, pero debido al incremento a los valores, tambien hay un aumento del increneto exponecial de los valores.


# Problema 7 --------------------------------------------------------------

# Para este problema, use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

# a) Enumere cinco dígitos que tengan una mediana de 7 y una media de 7 (se permiten repeticiones). Encontrar un conjunto diferente de 5 dígitos que tambien funcionen.
siete <- c(5, 6, 7, 8, 9)
median(siete)
mean(siete)    
# 5 conjuntos que tambien funcionen
dos <- c(0, 1, 2, 3, 4)
mean(dos)
median(dos)

# b) Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 (se permiten repeticiones). Da la media de tus 5 dígitos. Encuentra un conjunto diferente de 5 dígitos que funcione. R no tiene una función estándar incorporada para calcular la moda. Entonces creamos una función de usuario para calcular la moda de un conjunto de datos en R.
siete.2 <- c(1,2,7,8,9)
median(siete.2)


dos.2 <- c(0.2, 1.1, 2, 3, 3)
mean(dos.2)
median(dos.2)
 

