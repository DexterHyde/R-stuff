library(e1071)

wait = faithful$waiting
#useless = stem(wait)
#sprintf("mean = %s",  mean(wait))

erupt = faithful$eruptions
#plot(wait, erupt)

cov = cov(wait, erupt)
print(cov)