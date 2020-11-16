library(corrplot)
bank = read.csv('bankcust.csv')

#Obtain columns that are numeric in nature
numCols = unlist(lapply(bank, is.numeric))
#Filter dataframe with the columns that are numeric
bank <- bank[, numCols]

matriz <- cor(bank)
matriz <- round(matriz, 2)
View(matriz)
corrplot(matriz, method = 'circle')