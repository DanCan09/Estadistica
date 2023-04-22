# Daniela Alexandra Canabal Valdes 
# 10/03/2023
# Maestria Ciencias Forestales primer semestre

# HW_05
# Asignacion 5: Correlacion
setwd("C:/Users/Perfil 1/Documents/Maestria/Estadistica/Estadistica/Scrips")

# Ejercicio 1 -------------------------------------------------------------

Efimeras <- read.csv("efimeras.csv", header = TRUE)
head(Efimeras)

# Si creamos un diagrama de dispersión de los datos del cuadro 1, vemos el patrón con mayor claridad

plot(Efimeras$abundance ~ Efimeras$speed, 
     pch = 19, col = "purple3",
     xlab="Velocidad",
     ylab= "Abundancia",)

# Figura 1: Diagrama de dispersión de efímeros (Ecdyonurus dispar) y datos de velocidad del flujo. La velocidad de la corriente es el eje independiente y los datos de la mosca de mayo el eje dependiente.

# Parece que puede haber una relación entre la velocidad y la abundancia, pero hay varias inconsistencias, no es una correlación perfecta. Contestar las siguientes interrogantes: 
# ¿Es estadísticamente significativa la correlación?

cor.test(Efimeras$abundance, Efimeras$speed)
0.8441408^2
# r = 0.8441408
# R2 = 0.7125737
# Grados libertad = 6
# p-value = 0.008393


# los resultados arrojan un valor de p-value de 0.008393, lo cual nos indica que la correlacion es significativa, por lo tanto, se acepta la hipotesis alternativa: 
# “Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)”

# Ejercicio 2 -------------------------------------------------------------

# Las características del suelo se midieron en muestras de tres áreas diferentes (cima, pendiente y depresión) y a cuatro profundidades (0-10 cm, 10-30 cm, 30-60 cm y 60-90 cm). El área se dividió en 4 bloques, en un diseño de bloques al azar (Cuadro 2).

Suelo <- read.csv("suelo.csv", header = TRUE)
head(Suelo)

cor.test(Suelo$pH, Suelo$N)
cor.test(Suelo$pH, Suelo$Dens)
cor.test(Suelo$pH, Suelo$P)
cor.test(Suelo$pH, Suelo$Ca)
cor.test(Suelo$pH, Suelo$Mg)
cor.test(Suelo$pH, Suelo$K)
cor.test(Suelo$pH, Suelo$Na)
cor.test(Suelo$pH, Suelo$Conduc)

Conjunto <- c("pH - N", "pH - Dens", "pH - P", "pH - Ca", "pH - Mg", "pH - K", "pH - Na")
r <- c("0.636654", "-0.589026", "0.5910303", "0.8086293", "-0.3957821", "0.5795727", "-0.6932614" )
p <- c("0.000001149", "0.00001062", "0.00000974", "0.0000000000036139999999999997", "0.005361", "0.00001585", "0.000000047240000000000005")
datos.interes <- data.frame(Conjunto, r, p)
datos.interes
is.factor(datos.interes)

#Para poder orientarte en las correlaciones, la figura 2 muestra de forma gráfica las diferentes correlaciones entre todas las variables

library(corrplot)
Suelo_cor <- Suelo[ , 7:15]
cor(Suelo_cor)
mat.cor <- round(cor(Suelo_cor), digits=4)
corrplot(mat.cor, tl.col = "gray", bg = "azure", tl.srt = 35,
         title = "correlacion suelos", type = "upper")










