data = read.csv("vitamin3.csv")
dose = data['dose']
tab = table(dose)
View(tab)
#plot(dose)