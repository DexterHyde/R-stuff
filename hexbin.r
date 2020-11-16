library(hexbin)
myda1 = read.csv('bankcust.csv')
hbin <- hexbin(myda1$age, myda1$income, xbin = 40)
plot(hbin, xlab = 'age', ylab = 'income')