# Asignacion 1: Primer analisis en R
# Daniela Alexandra Canabal Valdes 
# Maestria Ciencias Forestales primer semestre
# Matricula: 1567373

# HW_01
# Parte 2
# problema 1:
# Un investigador realiza un inventario de la superficie reforestada por especie en la región centro mediante los reporte emitidos por CONAFOR. El investigador encuentra que la superficie reforestada con diferentes especies son las siguientes: la especie Pinus con 3140 has, Mezquite con 1453 has, Encinos con 450 has, Teka con 1200 has, Juniperos con 720 has.

Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200 
Juiperos <- 720 
Superficie <- c(Pinus, Mezquite, Encinos, Teka, Juiperos)

# Ahora, use la función gráfica barplot() para producir un diagrama de barras de la superficie por especie:
barplot(Superficie)

# Descubra cómo utilizar sort() para ordenar los elementos en la variable superficie, con el fin de organizar elementos en gastos en orden creciente.
sort(Superficie, decreasing = FALSE)

# Descubra cómo utilizar sort() y barplot() para producir un gráfico de barras con barras en orden decreciente.
barplot((sort (Superficie, decreasing = T)), col=c("rainbow"(5)), main=("Area Reforestada"), ylab =("ha"), las =1)

# Determine la media de la variable superficie
mean(Superficie)

# Problema 2: Un técnico examina 30 cajas de Petri en las que se colocaron para germinar seis semillas y después de cierto tiempo cuenta el número de semillas germinadas en cada una de ellas. Los valores de las 30 observaciones son los siguientes:
x1 <- 4
x2 <- 1
x3 <- 6
x4 <- 2
x5 <- 4
x6 <- 2
x7 <- 4
x8 <- 2
x9 <- 4
x10 <- 6
x11 <- 3
x12 <- 5
x13 <- 3
x14 <- 2
x15 <- 5
x16 <- 4
x17 <- 0
x18 <- 5
x19 <- 4
x20 <- 2
x21 <- 4
x22 <- 5
x23 <- 3
x24 <- 5
x25 <- 3
x26 <- 5
x27 <- 4
x28 <- 3
x29 <- 6
x30 <- 2

# Ingresar los datos en una variable llamada germinación.

Germinacion <- c(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30)

# Determinar la media de germinación de las 30 cajas Petri.
mean(Germinacion)

# Averigue como determinar la desviasión estándar standar deviation usando la función help (en la modalidad que desee).
sd(Germinacion, na.rm = FALSE)


#Problema 3: Un viverista mide la altura alcanzada por 25 plantas de Prosopis de un año de edad, obteniendo los siguientes valores:
  
h1 <- 38
h2 <- 14
h3 <- 44
h4 <- 11
h5 <- 9
h6 <- 21
h7 <- 39
h8 <- 28
h9 <- 41
h10 <- 4
h11 <- 35
h12 <- 24
h13 <- 36
h14 <- 12
h15 <- 20
h16 <- 31
h17 <- 24
h18 <- 25
h19 <- 10
h20 <- 21
h21 <- 11
h22 <- 36
h23 <- 37
h24 <- 20
h25 <- 26

# Ingresar los datos en una variable llamada altura.
altura <- c(h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25)

# Determinar la media de altura de las plántulas de Prosopis.

mean(altura)

#Determinar la desviación estándar de la variable altura.

sd(altura, na.rm = FALSE)




# Referencias:

# Marco Aurelio González Tagle. (2021, February). Cuadernillo de Ejercicios Principios de estadística Ingeniero Forestal (Version 1). Zenodo. http://doi.org/10.5281/zenodo.4544150
