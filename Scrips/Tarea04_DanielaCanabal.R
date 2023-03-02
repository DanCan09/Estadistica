# Daniela Alexandra Canabal Valdes 
# 01/03/2023
# Maestria Ciencias Forestales primer semestre

# HW_04
# Asignacion 4: Boxplot e Histogramas



# Problema 1 --------------------------------------------------------------

# Considere el siguiente conjunto de datos x2 con 1000 números al azar.

set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)
head(x2, n = 10)
tail(x2, n = 10)

# - 1. Incluir los siguientes intervalos de clase y personalizas con los puntos medios de cada intervalo de clase mids:

#   (0, 2)
#   (2, 4)
#   (4, 6)
#   (6, 8)
#   (8, 10)

a <- hist(x2, breaks = c(0, 2, 4, 6, 8, 10),
     col = "pink1", 
     xlab="Intervalo de clases",
     ylab= "Frecuencias",
     main = "Histograma A",
     las = 1,
     ylim = c(0,250))
axis(1, a$breaks)

# Incluir los siguientes intervalos de clase y personalizas con los puntos medios de cada intervalo de clase mids.

#   (0, 1)
#   (1, 2)
#   (2, 4)
#   (4, 7)
#   (7, 10)


b <- hist(x2, breaks = c(0, 1, 2, 4, 7, 10),
     col = (terrain.colors(5)), 
     xlab="Intervalo de clases",
     ylab= "Frecuencias",
     main = "Histograma B",
     freq = TRUE,
     las = 1,
     ylim = c(0,350))
axis(1, a$breaks)

# Problema 2 --------------------------------------------------------------

# La siguiente figura 1 presenta cuatro histogramas (A, B, C, D).

#  a. ¿Cuál distribución parece estar sesgada a la derecha?
#   Grafica D

#  b. ¿Cuál distribución parece estar sesgada a la izquierda?
#   Grafica A

#  c. ¿Cuál distribución parece ser simétrica o en forma de “campana”?
#   Grafica c

#  d. ¿Cuál distribución parece ser bimodal?
#   Grafica B

#  e. ¿Cuál distribución parece mostrar una falta de intervalos?
#     Grafica D

# Problema 3 --------------------------------------------------------------

head(quakes)
tail(quakes)

mags <- hist(quakes$mag, xaxt = "n",
             col = "#e6ac00", xlab="Magnitud de los terremotos",
             ylab= "Frecuencias",
             main = "Terremotos en la isla Fiji 1964-actualidad",
             las = 1,
             ylim = c(0,250))
axis(1, mags$mids)

# Puede tomar en cuenta los siguientes datos que se almacenaron en el objeto mags. para determinar las siguientes preguntas:

# a. ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?
# La distribucion se encuentra sesgada hacia la derecha, lo cual indica que los registros de terremotos con magnitudes de 4.1 a 5 predoniman en los datos.

# b. Mencione un intervalo donde ocurren tipicamente las magnitudes.
fivenum(quakes$mag)
# En los rangos de 4.0 a 4.9

# c. Determine el rango de las magnitudes (Range = Max - Min).
range(quakes$mag)
# Rango mayor - 6.4
# Rango menor - 4.0

# d. ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?
# El 11.3% de los terremotos ocurren con magnitud en la clase 5.3

mag5.1 <- subset(quakes, quakes$mag >= 5.1)
mag5.4 <- subset(mag5.1, mag5.1$mag <=5.4)
head(mag5.4)
(113*100)/1000
  
# e. ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?
# El 19.8% de los terremotos ocurren con una magnitud igual o mayor a la clase 5.0
mag5 <- subset(quakes, quakes$mag >=5.0)
head(mag5)
(198*100)/1000

# f. ¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?
# El 58.5% de los terremotos ocurren con una magnitud igual o menor a la clase 4.6

mag4.6 <- subset(quakes, quakes$mag <=4.6)
head(mag4.6)
(585*100)/1000



# Boxplots ----------------------------------------------------------------

# Problema 4 --------------------------------------------------------------

# ¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercer cuartil?
# b. 50 %


# Problema 5 --------------------------------------------------------------

# La siguiente figura presenta tres gráficas para los diámetros de tres especies diferentes (C, F y H).

#  a. ¿Cuál especie tiene el diámetro más pequeño?
# Spp C

#  b. ¿Cuál especie tiene el diámetro más grande?
# Spp F

#  c. ¿Cuál especie tiene el diámetro mínimo más alto?
# Spp F

#  d. ¿Cuál especie tiene la mediana de diámetro más pequeña?
# Spp C

#  e. ¿Cuál especie tiene la mediana de diámetro mas grande?
# Spp H

#  f. ¿Cuál especie tiene el menor rango de diámetro?
#  Spp F

#  g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande?
# Spp C

#  h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño?
# Spp F

#  i. ¿Cuál especie tiene una distribución simétrica?
# Spp H

#  j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ?
# Spp F
  

# Problema 6 --------------------------------------------------------------

# Los siguientes datos muestran el número de incendios forestales ocurridos en cada semana en nuestros bosques de México. Los datos son del 01. de enero al 04 de marzo del 2021 de acuerdo con el reporte de CONAFOR.

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
fires

# Determine lo siguiente
# 1. Valor mínimo
min(fires)

# 2. Valor máximo
max(fires)

# 3. Rango
range(fires)

# 4. Q1 (25 %)
quantile(fires, c(.25))

# 5. Q2 (50 %)
quantile(fires, c(.50))

# 6. Q3 (75 %)
quantile(fires, c(.75))

# 7. Media
mean(fires)

# 8. Varianza
var(fires)

# 9. Desviación estándar
sd(fires)

# 10. Realice un boxplot personalizado con los datos de los incendios
boxplot(fires,
        main = "Incendios Forestales Mexico",
        xlab = "No. Incendios",
        las = 1,
        col = "#FFA200") 
