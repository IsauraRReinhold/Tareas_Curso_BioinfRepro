#script para la df fullmat

setwd("/home/isa/BioinfinvRepro/Unidad7/Prac_Uni7/maices/bin")

#Crear data frame llamada fullmat
fullmat <- read.csv("/home/isa/BioinfinvRepro/Unidad7/Prac_Uni7/maices/meta/si(1).csv", header = T, sep = ",", na.strings = F)

#Contar las primeras 6 filas
fullmat[1:6,]

#Cuántas muestras hay
nrow(fullmat)

#Contar cuántos estados tienen muestra
summary(fullmat$Estado)

#Cuantas muestras fueron colectadas antes de 1980

summary(fullmat$A.o._de_colecta)

#Cuantas muestras de cada raza

summary(fullmat$Raza)

#Promedio de la altitud de colecta
mean(fullmat$Altitud)

#Altitud máxima y miníma
range(fullmat$Altitud)

#Crear nueva df solo con Olotillo
Olotillo <- fullmat[fullmat$Raza=="Olotillo", ]
View (Olotillo)

#Crear df con Reventado, Jala y Ancho
razastres <- fullmat[fullmat$Raza==c("Reventador", "Jala", "Ancho"), ]
View(razastres)

#Guardar la tabla
write.csv(razastres, file = "submat.cvs" )

