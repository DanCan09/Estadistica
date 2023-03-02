# Daniela Alexandra Canabal Valdes 
# 01/03/2023
# Maestria Ciencias Forestales primer semestre

# HW_04
# Laboratorio 4: Uso de restricciones y estadistica descriptiva


# Importar datos ----------------------------------------------------------

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                  "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)
head(inventario, n = 5)

# El objeto "inventario" es un conjunto de datos, por lo general, despues de imporatar un grupo de datos en R, es posible que desee utilizar algunas funciones para inspeccionar sus propiedades y funciones basicas:
str(inventario)
dim(inventario)
tail(inventario, n = 5)
names(inventario)
colnames(inventario)
summary(inventario)

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)

summary(inventario[ ,3:5])


# Tablas de frecuencia ----------------------------------------------------

# Un ejemplo de variable cualitativa es “posición”. Esta variable contiene la posición de cada árbol dentro del rodal. Cuando se inspecciona una variable cualitativa, normalmente se incia calculando una tabla de frecuencia. Una tabla de frecuencias muestra los recuentos de cada categoría. En R, tenemos la función table() para obtener este tipo de tablas.

freq_position <- table(inventario$Posicion)
freq_position

# A menudo, es conveniente expresar las frecuencias como proporciones o porcentajes, también conocido como frecuencias relativas.

prop_position <- freq_position / sum(freq_position)
prop_position

# Si desea expresar las proporciones como porcentajes, multiplique prop_position por 100:

perc_position = 100 * prop_position
perc_position


# Graficas barplot y pie --------------------------------------------------

# Habiendo obtenido las frecuencias y / o proporciones de las categorías de un variable cualitativa, podemos continuar nuestra exploración con algunas representaciones visuales. Hay dos gráficos más comunes que se utilizan para visualizar frecuencias:
  
  # Gráficas de barras (barplot)
# El uso de barplot () incluye los argumentos las,border y cex.names:
# l- as = 1: muestra las frecuencias perpendiculares al eje-y.
#  - border = NA: elimina el borde negro alrededor de las barras.
#  - cex.names = 0.7: reduce los tamaños de las etiquetas de categoría (para que todas quepan en el gráfico).

barplot(freq_position, las = 1, border = NA, cex.names = 0.7) 

  # Gráficas de pastel (pie)
# El otro tipo común de gráfico para ver frecuencias es un gráfico circular. R proporciona la función pie() para producir estos gráficos:

pie(freq_position, col=cm.colors(4))

# Si desea mostrar las frecuencias, puede hacer algo como esto:
pie(freq_position, col = cm.colors(4),
    labels = paste(levels(inventario$Posicion), round(perc_position, 2), " %"))


# Autoestudio -------------------------------------------------------------

# Completar una tabla de frecuencia y su representación gráfica (barplot y pie) para la variable Especie del conjunto de datos inventario

freq_Spp <- table(inventario$Especie)
freq_Spp
prop_Spp <- freq_Spp / sum(freq_Spp)
prop_Spp
perc_Spp = 100 * prop_Spp
perc_Spp


barplot(freq_Spp, las = 1, border = NA, cex.names = 0.7) 
pie(freq_Spp, col = cm.colors(4),
    labels = paste(levels(inventario$Spp), round(perc_Spp, 2), " %"))

# Representacion de variables cantitativas --------------------------------

# La mayoría de las variables del conjunto de datos Inventario son de naturaleza cuantitativa. Una posibilidad de inspeccionar visualmente esas variables es categorizarlas y luego usar un gráfico de barras o un gráfico circular. Otra posibilidad es utilizar gráficos específicamente para variables cuantitativas:
  
# - histogramas
# - boxplots o gráfica de cajas

# Vamos a aplicar las funcion hist para la variable Diametros del connunto invenatrio y guardar la salida en un objeto llamada diam_hist.
diam_hist <- hist(inventario$Diametros, las = 1, col = '#ffe0b3')
diam_hist$breaks

# Codigos
# breaks: puntos de ruptura (corte) de los intervalos de clase
# counts: número de observaciones en cada categoría
# density: densidad
# mids: punto central del intervalo
# xname: nombre del objeto (variable) que se esta graficando
# equidist: ¿Los categorías tienen el mismo ancho?
# attr: Tipo de clase


h1 <- hist(inventario$Diametros, xaxt = "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col = "#00cc99", xlab="Diámetros (cm)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, h1$mids)


# Autoestudio 2 -----------------------------------------------------------

# Realizar el mismo procedimiento para la variable Altura.


altura_hist <- hist(inventario$Altura, las = 1, col = '#ffe0b3')
altura_hist$breaks


hi_h <- hist(inventario$Altura, xaxt = "n",
           breaks = c(8, 10, 12, 14, 16, 18, 20, 22),
           col = "#00cc99", xlab="Altura (m)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, hi_h$mids)

