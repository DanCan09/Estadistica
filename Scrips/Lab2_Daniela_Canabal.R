# Daniela Alexandra Canabal Valdes 
# 22/02/2023
# Maestria Ciencias Forestales primer semestre

# HW_02
# Laboratorio 3: Importar datos a R


# Parte 1 -----------------------------------------------------------------


# Importar archivos .csv --------------------------------------------------

# Después de tener la base de datos guardados en el formato .csv y nombre deseado, se procede a la importación usando la función read.csv. En el caso de que los datos se encuentren ubicados en otra carpeta diferente, se informa a R el directorio correcto añadiendo: "direccion/nombre_archivo.csv".

trees <- read.csv("Scrips/DBH_1.csv", header = TRUE)
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
profepa <- read.csv(prof_url, header = FALSE )
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


