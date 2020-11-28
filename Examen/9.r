library(hexbin)
data = read.csv("marketingdb.csv")
age = data$age
income = data$income
plot(income, age, main = "Scatter")

hbin <- hexbin(age, income, xbin = 20)
plot(hbin, xlab = 'age', ylab = 'income')