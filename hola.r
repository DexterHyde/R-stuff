vecNum <- c(23, 23.45, 29.5, 5002.43)
vecInt <- c(65342L, 3423L, 543L)
vecBool <- c(TRUE, FALSE, TRUE)

vecChar <- c("Diego", "Flores", "Díaz")
vecChar <- c(vecChar, "Es", "Repro")

vecTest <- c(1,1,0,0)
vecTest <- c(vecTest, vecTest, vecTest)
vecTest <- vecTest[1:3]

series1 <-seq(from = 1, to = 20, by = 0.5)

mat <- matrix(seq(1:20), nrow = 4, ncol = 5)

vecNum <- c(seq(1:50))
#print(vecNum)


matSmall <- matrix(nrow = 5, ncol = 4)

matBig <- matrix(seq(1:50), nrow = 10, ncol = 5)

#Juntar por columnas:
matCBinded <- cbind(1:3, 6:8, 12:14)
#juntar por renglones:
matRBinded <- rbind(4:7, 10:13, 16:19)

matBigRow <- matrix(1:50, nrow =10, ncol = 5, byrow = TRUE)

#lista
misDatos <- list(nombre = "Diego", apellido = "Flores", edad = 22, carrera = "IIN", graduado = FALSE, sequ = 1:40, matriz = matrix(1:100, nrow = 10, ncol = 10, byrow = TRUE))

#factors
nivelE <- factor(c("Primaria", "Secundaria", "Preparatoria", "Universidad", "Primaria", "Universidad", "Secundaria", "Preparatoria", "Primaria", "Preparatoria"))

print(levels(nivelE))