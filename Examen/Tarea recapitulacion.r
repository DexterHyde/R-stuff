library(e1071)
library(iterators)

demo = read.csv("demographics.csv")
faithwaiting = faithful$waiting
vectors <- list(demo$age, demo$income, faithwaiting)

concepts <- c('Media', 'Mediana', 'Varianza', 'Desviación estándar', 'Skewness', 'Kurtosis')
colnames <- c('Concepto', 'Demographics age', 'Demographics income', 'Faithful Waiting')
iterNames = iter(tail(colnames, -1))

base <- cbind(concepts)

par(mfrow = c(3,1))
for(data in vectors){
    hist(data, main = nextElem(iterNames))
    stats <- list()
    stats <- c(stats, mean(data)) 
    stats <- c(stats, median(data))
    varianza = var(data)
    desvstd <- sqrt(varianza)
    stats <- c(stats, c(varianza, desvstd))
    stats <- c(stats, skewness(data))
    stats <- c(stats, kurtosis(data))
    
    base <- cbind(base, stats)
}

colnames(base) <- colnames

View(base)

