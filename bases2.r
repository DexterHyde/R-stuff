#Obtain data from csv and save the education column
data = read.csv("demographics.csv")
carpre = data$carpr
min <- min(salary)
max <- max(salary)

breaks = seq(0, 100, by = 10)
cutCarpr = cut(carpre, breaks, right = FALSE)
temp = cbind(carpre, cutCarpr)
tabla = table(cutCarpr)
#barplot(tabla)
#View(tabla)

acumulada = cumsum(tabla)
#View(acumulada)
#barplot(acumulada, main = "Costo de carros")

relativaAcum = acumulada/nrow(data)
plot(breaks[1:10], relativaAcum, main = "Frecuencia acumulada relativa")