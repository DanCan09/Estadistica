# Laboratorio 1
# Daniela Alexandra Canabal Valdes 
# Maestria Ciencias Forestales primer semestre
# Matricula: 1567373

# HW_01
# Primer contacto con la consola R


# Considerando las facturas mensuales de una estudiante universitaria de la MFC: telefono celular $300, transporte $240, comestibles $1527, gimnasio $400, alquiler $1500, otros $1833:

# Gastos totales
 300+240+1527+400+1500+1833
 
 
# Crear objetos o variables que almacenen uno o más valores.

 celular <- 300
 transporte <- 240
 comestibles <- 1527
 gimnasio <- 400
 alquiler <- 1500
 otros <- 1833

 
 # Suponiendo que la estudiante tiene los mismos gastos todos los meses, ¿cuanto gastaria durante un semestre escolar?
 # Total por semestre (cinco meses)
 (celular+transporte+comestibles+gimnasio+alquiler+otros)*5
 
 # Manteniendo la misma suposicion sobre los gastos mensuales, ¿cuanto gastaria la estudiante durante un año escolar?
 # Total por año escolar (diez meses)
 (celular+transporte+comestibles+gimnasio+alquiler+otros)*10
 
 
 #AUTOEVALUACION
 #Combinar variables dentro de la función de combinación c() para crear un vector llamado gastos:
 
 gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

 
 #Diagrama
 #Descubra cómo utilizar sort() para ordenar los elementos en la variable gastos, con el fin de organizar elementos en gastos en orden decreciente.
 sort(gastos, decreasing = FALSE)
 
 #Descubra cómo utilizar sort() y barplot() para producir un gráfico de barras con barras en orden decreciente
 barplot((sort (gastos, decreasing = F)), col=c("rainbow"(6)), main=("Gastos"), ylab =("Costo"), xlab =("gastos"), las =1)
 

 # parte 2 variables
 
 # problema 1: identifique el tipo de variable (cualitativa o cuantitativa) para la lista de preguntas de una encuesta aplicada a estudiantes universitarios en una clase de estadistica:
 
 # - Nombre del estudiante  (cualitativa)
 # - Fecha de nacimiento (p. Ej., 21/10/1995) (cuantitativa)
 # - Edad (años) (cuantitativa)
 # - Direccion de casa (cualitativa)
 # - Numero de telefono (cualitativa)
 # - Area principal de estudio (cuantitativa)
 # - Grado de año universitario (primer, segundo, tercero, ultimo año) (cuantitativa)
 # - Puntaje en la prueba de mitad de periodo (basado en 100 puntos posibles) (cuantitativa)
 # - Calificacion general (A, B, C, D, F) (cuantitativa)
 # - Tiempo (en minutos) para completar la prueba final de MCF 2023(cualitativa)
 # - Numero de hermanos (cualitativa)
 
 # problema 2: elija un objeto (animales, plantas, paises, instituciones etc.) y obtenga una lista de 14 variables: 7 cuantitativas y 7 cualitativas
 # objeto: Silla
 # cuantitativas
 # 1. ¿Cuantas sillas hay en la casa?
 # 2. ¿Cuantas patas tienen?
 # 3. ¿Cuantas son nuevas?
 # 5. ¿Cuantas son viejas?
 # 6. ¿Cuantas son de plastico?
 # 7. ¿cuantas son de metal?
 
 # cualitativa
 # 1. ¿Tipo de silla?
 # 2. ¿Color de silla?
 # 3. ¿Material de silla?
 # 5. ¿Condicion de silla?
 # 6. ¿Ubicacion de silla?
 # 7. ¿Tamaño de silla?
 
 # problema 3: Considere una variable con valores numéricos que describen formas electrónicas de expresar opiniones personales: 1 = Twitter; 2 = correo electrónico; 3 = mensaje de texto; 4 = Facebook; 5 = blog. ¿Es esta una variable cuantitativa o cualitativa? 
 # Explique: es una variable cualitativa, ya que esta enlista las diversas formas electronicas donde se puede expresar opiniones personales.
 # 
 #
 # problema 4: Para cada pregunta de investigación, (1) identifique a los individuos de interés (el grupo o grupos que se están estudiando), (2) identifique la (s) variable (s) (la característica sobre la que recopilaríamos datos) y (3) determine si cada variable es categórico o cuantitativo.
 # - ¿Cuál es la cantidad promedio de horas que los estudiantes de universidades públicas trabajan cada semana?
 # - ¿Qué proporción de todos los estudiantes universitarios de México están inscritos en una universidad pública? 
 # - En los universidades públicas, ¿las estudiantes femeninas tienen un promedio de CENEVAL más alto que los estudiantes varones?
 # - ¿Es más probable que los atletas universitarios reciban asesoramiento académico que los atletas no universitarios?
 # - Si reuniéramos datos para responder a las preguntas de la investigación anterior, ¿qué datos podrían analizarse mediante un histograma? ¿Cómo lo sabes?.
 #  las variables que se pudieran usar para realizar un analisis serian: estudiantes inscritos y horas de trabajo, ya que ambas variables son de caracter cuantitativa y pueden mostrar resultados estadisticos comprobables.
 
 # 1: El grupo general de interes son los estudiantes de universidades publicas.

 # 2: 
 # independientes
 # estudiantes inscritos
 # estudiantes femeninas con promedio superior de CENAVAL
 
 # dependientes
 # horas de trabajo
 # asesoramiento para atletas universitarios
 
 # 3: 
 # estudiantes inscritos (cuantitativa)
 # estudiantes femeninas con promedio superior de CENAVAL (cualitativa)
 # horas de trabajo (cuantitativa)
 # asesoramiento para atletas universitarios (cualitativa)
 