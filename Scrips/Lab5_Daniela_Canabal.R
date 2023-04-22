# Daniela Alexandra Canabal Valdes 
# 10/03/2023
# Maestria Ciencias Forestales primer semestre

# HW_05
# Laboratorio 5: Correlacion

# Para cada ejercicio
#  - Examinar la relación que existe entre dos muestras mediante una correlación,
#  - Explore los datos gráficamente y explique,
#  - Establezca la Hipótesis nula y la Hipótesis alternativa,
#  - Aplique la prueba correspondiente,
#  - Reporte los datos (indicar valor de r, grados de libertad y probabilidad, así como la significancia de la correlación).


# Ejercicio 1. El cuarteto de Anscombe ------------------------------------
anscombe

# Generar los gráficos de distribución de puntos para cada par de datos.
# Gratifica en un cuadro de 2x2

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 18)
plot(anscombe$x2, anscombe$y2, pch = 18)
plot(anscombe$x3, anscombe$y3, pch = 18)
plot(anscombe$x4, anscombe$y4, pch = 18)
par(op)


# Coeficiente de correlación ----------------------------------------------

# Determinar para cada par de datos los coeficientes de correlación r. 
cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$x4, anscombe$y4)

# ¿Alguna sorpresa? Como puedes ver, los cuatro pares de las variables xy tienen básicamente la misma correlación de 0.816. Pero no todos tienen diagramas de dispersión en los que los puntos se agrupan alrededor de una línea.

# El mensaje para llevar a casa es que el coeficiente de correlación puede ser engañoso en presencia de valores atípicos o asociación no lineal. Debido a esto, siempre es importante revisar los datos con un gráfico de dispersión.

