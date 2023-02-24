# Daniela Alexandra Canabal Valdes 
# 23/02/2023
# Maestria Ciencias Forestales primer semestre

# HW_02
# Asignacion 2: Uso de restricciones y estadistica descriptiva



# Importar datos de trabajo -----------------------------------------------

#Los datos de trabajo provienen del libro Introductory probability & statistics, applications for forestry & natural sciences de Kozak et al. (2008). El Cuadro 1 muestra un ejemplo de datos colectados de 50 árboles con siete variables. (i) Árbol se refiere al número de árbol, (ii) Fecha: mes de colecta en Marzo 2006; (iii) Especies: C: Cedro Rojo (Western red cedar); F: Douglasia verde (Douglas fir); H: Tsuga heterófila (western hemlock); (iv) Posición: clasificación de la copa: D: Dominante, C: codominante, I: Intermedio, S: suprimido; (v) Vecinos: número de vecinos en un radio de 5m; (vi) Diámetro: diámetro a la altura de pecho (1.3m); (vii) Altura total.

# Ingresar datos ----------------------------------------------------------


setwd("C:/Users/Perfil 1/Documents/Maestria/Estadistica/Estadistica/Scrips")
conjunto <- read.csv("cuadro1.csv", header = TRUE)
head(conjunto)


# Seleccion de datos ------------------------------------------------------

# Aplicar la función subset para la variable Altura de acuerdo a las siguintes indicaciones:

H <- conjunto$Altura
H

# • Incluir los datos iguales o menores a la media.

H.media <- subset(conjunto, conjunto$Altura <= mean(Altura))
head(H.media)


# • Incluir los datos menores a 16.5 m 

H.16 <- subset(conjunto, conjunto$Altura < 16.5)
head(H.16)


# Aplicar la función subset para la variable Vecinos

vecinos <- conjunto$Vecinos

# • Incluir los árboles que tengan un número de vecinos iguales o menores a 3

Vecinos.3 <- subset(conjunto, conjunto$Vecinos <= 3)
head(Vecinos.3)   

# • Incluir los árboles que tengan un número de vecinos mayores a 4 (Objeto en R: ‘Vecinos-4)

Vecinos.4 <- subset(conjunto, conjunto$Vecinos >= 4)
head(Vecinos.4) 

# Aplicar la función subset para la variable Diametro
DBH <- conjunto$Diametro
head(DBH)

# • Incluir los diámetros menores a la media

DBH.media <- subset(conjunto, conjunto$Diametro <= mean(Diametro))
head(DBH.media)

# • Incluir los diámetros mayores a 16

DBH.16 <- subset(conjunto, conjunto$Diametro >= 16)
head(DBH.16)

#Aplicar la función subset para la variable Especie

# • Incluir la especie Cedro Rojo

spp <- conjunto$Especie
spp
Cedro.r <- subset(spp, spp == "C")
Cedro.r

# • Incluir la especie Tsuga heterófila y Douglasia verde

Tsuga.h <- subset(spp, spp == "H")
Douglasia.v <- subset(spp, spp == "F")
Tsuga.Duglasia <- c(Tsuga.h, Douglasia.v)
Tsuga.Duglasia

# Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diamtero

DBH16.9 <- subset(DBH, DBH <= 16.9)
DBH16.9

# Determinar cuantas observacions son mayores a18.5 metros de Altura

H18.5 <- subset(H, H > 18.5)
H18.5


# Visualizacion de datos --------------------------------------------------

# Con la función hist generar los histogramas para los objetos creados en el apartado anterior
# Altura
hist(H, main = "Alturas",
     xlab = "Altura (m)",
     ylab = "No. individuos",
     col = (rainbow(7)),
     las = 1)

# H.media 

hist(H.media$Altura, main = "Altura Media",
     xlab = "Altura (m)",
     ylab = "No. individuos",
     col = "pink",
     las = 1)

# H.16
hist(H.16$Altura, main = "Altura mayor a 16.5",
     xlab = "Altura (m)",
     ylab = "No. individuos",
     col = "pink",
     las = 1)


# Vecinos

hist(vecinos, main = "Vecinos por arbolado",
     xlab = "No. Vecinos",
     ylab = "No. Individuos",
     col = "pink",
     las = 1) 

#Vecinos-3, 

hist(Vecinos.3$Vecinos, main = "Vecinos menores a 3",
     xlab = "No. Vecinos",
     ylab = "No. Individuos",
     col = "pink",
     las = 1) 

# Vecinos-4

hist(Vecinos.4$Vecinos, main = "Vecinos mayores a 4",
     xlab = "No. Vecinos",
     ylab = "No. Individuos",
     col = "pink",
     las = 1) 

# Diametro

hist(DBH, main = "Diametro de Arboles",
     xlab = "DBH",
     ylab = "No. Individuos",
     col = "pink",
     las = 1) 

# DBH-media

hist(DBH.media$Diametro, main = "Diametro medio de Arboles",
     xlab = "DBH",
     ylab = "No. Individuos",
     col = "pink",
     las = 1) 

# DBH-16
hist(DBH.16$Diametro, main = "Diametro medio de Arboles",
     xlab = "DBH",
     ylab = "No. Individuos",
     col = "pink",
     las = 1)


# Estadistica basica ------------------------------------------------------

# Determinar la media (mean) de los objetos (variable y respectivos subsets), así como su desviación estándar (sd).
# Altura
mean(H)
sd(H)

# H.media
mean(H.media$Altura)
sd(H.media$Altura)

# H.16
mean(H.16$Altura)
sd(H.16$Altura)

# Vecinos
mean(vecinos)
sd(vecinos)

# Vecinos-3 
mean(Vecinos.3$Vecinos)
sd(Vecinos.3$Vecinos)

# Vecinos-4
mean(Vecinos.4$Vecinos)
sd(Vecinos.4$Vecinos)

# Diametro
mean(DBH)
sd(DBH)

# DBH-media
mean(DBH.media$Diametro)
sd(DBH.media$Diametro)

# DBH-16
mean(DBH.16$Diametro)
sd(DBH.16$Diametro)

