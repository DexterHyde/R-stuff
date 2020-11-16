#Obtain data from csv and save the education column
data = read.csv("demographics.csv")
educa <- data$educ

#View(data)
#Create education categories table and print it by column
tabla <- table(educa)
print(cbind(tabla))

#Obtain and plot the education categories higher than the mean
media = mean(tabla)
bools = tabla > media
print(cbind(tabla[bools]))

#View gender and educ columns from only married people
View(data[data$marital == 'Married', c("gender", "educ")])

#Obtener frecuencias relativas de la columna de educación
frecsEduca = tabla/nrow(data)
View(cbind(frecsEduca))
barplot(frecsEduca, main = "Frecuencias Relativas")

#obtener categorias con menos del 20% de la frecuencia de los datos
menosDel20 = frecsEduca[frecsEduca < 0.2]
View(menosDel20)