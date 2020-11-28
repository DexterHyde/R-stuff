library(e1071)
data = read.csv("incomedata.csv")
print(kurtosis(data$income))
agecat = data['agecat']
View(agecat)
tab = table(agecat)
View(tab)
barplot(tab)