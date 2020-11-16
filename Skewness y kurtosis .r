library(e1071)
erupt = faithful$eruptions

#print(skewness(erupt))

tercerm = moment(erupt, order = 3, center = TRUE)
segundom = moment(erupt, order = 2, center = TRUE)
res = tercerm/(segundom^(3/2))



#Exceso de kurtosis
kurtosisExcess = kurtosis(erupt)
print(kurtosisExcess)

#kurtosis
kurtosis = kurtosisExcess +3