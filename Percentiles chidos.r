data = read.csv("demographics.csv")
carpr = data$carpr
#quantiles
byN = 5
percentages = seq(1/byN, 1, by = 1/byN)
quantiles = quantile(carpr, percentages)

#Boxplot

boxplot(carpr, horizontal = TRUE)