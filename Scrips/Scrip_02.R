# Daniela Alexandra Canabal Valdes 
# 23/02/2023
# Maestria Ciencias Forestales primer semestre

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1" )
head(profepa)

fivenum(profepa$Inspección)

# Enlistado de estados con mas de 16 inspecciones

Insp.16 <- subset(profepa, profepa$Inspección >= 16)
head(Insp.16)

Insp.mayor <- subset(profepa, profepa$Inspección>=2)
head(Insp.mayor)



# Hoja de datos -----------------------------------------------------------

petri <- c(5, 6, 7, 8, 9)
germi <- c(1, 3, 5, 3, 1)
sum(germi)

Germinacion <- data.frame(petri, germi)
germi.2 c(5, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 9)
c.petri <- c(1;13)
Germ2 <- data.frame(c.petri, germi.2)
view(Germ2)
