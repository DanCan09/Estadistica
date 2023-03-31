# Daniela Alexandra Canabal Valdes 
# 02/03/2023
# Maestria Ciencias Forestales primer semestre

# Scrip 3

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)

boxplot(conjunto$Diametro,
        col = "pink",
        ylab = "Diametro")


boxplot(conjunto$Diametro ~ conjunto$Especie,
        col = "pink4")
        
boxplot(conjunto$Altura ~ conjunto$Especie,
        col = "sky blue")


cor.test(conjunto$Diametro, conjunto$Altura)

plot(conjunto$Diametro, conjunto$Altura, pch = 16)

#
