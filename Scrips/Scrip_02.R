# Daniela Alexandra Canabal Valdes 
# 23/02/2023
# Maestria Ciencias Forestales primer semestre

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1" )
head(profepa)

fivenum(profepa$Inspección)

Enlistado de estados con mas de 16 inspecciones

Insp <- subset(profepa, profepa$Inspección >= 16)
head(Insp)
