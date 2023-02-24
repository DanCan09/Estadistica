# Daniela Alexandra Canabal Valdes 
# 22/02/2023
# Maestria Ciencias Forestales primer semestre

# HW_02
# Laboratorio 3: Importar datos a R

setwd("C:/Users/Perfil 1/Documents/Maestria/Estadistica/Estadistica/Scrips")

# Parte 1 -----------------------------------------------------------------


# Importar archivos .csv --------------------------------------------------

# Después de tener la base de datos guardados en el formato .csv y nombre deseado, se procede a la importación usando la función read.csv. En el caso de que los datos se encuentren ubicados en otra carpeta diferente, se informa a R el directorio correcto añadiendo: "direccion/nombre_archivo.csv".

trees <- read.csv("DBH_1.csv", header = TRUE)
head(trees)


# Ingresar datos directo en la consola ------------------------------------


# Una manera alternativa de capturar los datos de forma manual en el programa RStudio es creando objetos y asignando datos:
# Supongamos que tenemos 30 mediciones de árboles de la especie Pinus pseudostrobus realizado mediante un inventario en campo, los datos son los siguientes:

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)



# Almacenar y Accesar datos en la Nube ------------------------------------

#Importar datos a R que se encuentran en una URL no segura: las que comienzan con http: es sencillo siempre que:
# * Los datos se almacenan en un formato simple, p. ej. Texto sin formato,
# * El archivo no está incrustado en un sitio web HTML más grande,

# Los datos los vamos a descargar en un objeto llamado Profepa. Los datos corresponden a las Acciones de Inspección y Vigilancia a los Recursos Forestales en ANPs. 

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1" )
head(profepa)

# Servicios como Dropbox y GitHub ahora almacenan sus datos en URL seguras. Puedes saber si los datos están almacenados en una dirección web segura si comienzan con https en lugar de http. Tenemos que usar diferentes comandos para descargar datos de URL seguras.
# (Por default Dropbox añade un cero al final del link y siempre tendremos que sustituirlo por el número 1)

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

# Para descargar los datos de Github podemos utilizar la paquetería readr y su función read_csv:

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)



# Parte 2 -----------------------------------------------------------------


# Operaciones con la base de datos ----------------------------------------


# Siempre al realizar una operación con las variables que contiene la base de datos debemos utilizar el nombre del objeto en este caso trees. Como primer ejemplo determinaremos la media y la desviación estándar de la variable dbh de la base de datos trees


mean(trees$dbh)

# Desviacion estandar
sd(trees$dbh)


# Seleccion mediante restricciones ----------------------------------------

# El uso de restricciones sirve para obtener una muestra bajo ciertas condiciones restrictivas de la base de datos trees y es por ejemplo, una operación útil en el manejo de información de los inventarios forestales. 

# Los condicionantes restrictivas más empleadas son:
# igual o mayor (>=), mayor que (>), igual que (==)
# igual o menor (<=), menor que (<), no igual (!=)

# Para mostrar como funcionan las restricciones podemos realizar las siguientes preguntas: ¿Cuántos individuos tiene un diámetro menor (<) a 10 cm?
  
sum(trees$dbh < 10)

#También es interesante saber cuales son los individuos que son inferiores al diámetro (dbh< 10 cm). Para esto, hacemos uso de la función which que no regresara cuales individuos son los que posen tal restricción.

which(trees$dbh < 10)

# Excluir los diámetros que se encuentran en la parcela 2. El objeto resultante se puede grabar como trees.13. El símbolo ! indica NO.

trees.13 <- trees[!(trees$parcela=="2"),]
trees.13


# Seleccion de submuestras ------------------------------------------------

#Una submuestra se puede obtener de cualquier base de datos que este disponible en R mediante la función "subset" 

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)


# Representacion grafica --------------------------------------------------


# Ahora tenemos dos base de datos: trees y trees.1 disponibles en R y con ambas podemos realizar operaciones y gráficas

mean(trees$dbh)
mean(trees.1$dbh)


# Histograma --------------------------------------------------------------

# Un histograma es una representación visual de la distribución de un conjunto de datos. Como tal, la forma de un histograma es su característica más evidente e informativa: le permite ver fácilmente dónde se encuentra una cantidad relativamente grande de datos y dónde hay muy pocos datos.
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

hist(mamiferos$total_sleep)

# Como puedes observar en la figura 6, el título de la figura, así como el nombre del eje de x & y se dan por default, por lo tanto tendremos que trabajar el código para obtener un histograma más presentable

hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas sueño de las 39 especies",
     xlab = "Horas sueño",
     ylab = "Frecuencia",
     las = 1, 
     col = cm(9))


# Barplot o grafico de barras ---------------------------------------------

# Un diagrama de barras (o gráfico de barras) es uno de los tipos de gráficos más comunes. Muestra la relación entre una variable numérica y una categórica. Cada entidad de la variable categórica se representa como una barra. El tamaño de la barra representa su valor numérico.

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

# Primeramente tendremos que acomodar los datos en columnas (los datos originales estan acomodados en dos columnas (weight, feed, Peso y tipo de alimentación de los pollos.)

feeds <- table(chickwts$feed)
feeds     
barplot(feeds)

# Ordenado
barplot(feeds[order(feeds, decreasing = TRUE)],
ylim = c(0,14),
main = "Alimentacion de Aves",
xlab = "Alimento",
ylab = "peso (gr)",
las = 1, 
col = rainbow(6))


