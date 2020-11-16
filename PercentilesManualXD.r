data = read.csv("demographics.csv")
#Obtain the car prices column:
carpre = data$carpr
#Set the breaks intervals
breaks = seq(0,100, by =5)
# Get intervals of the car prices columns by "breaks" intervals
cut = cut(carpre, breaks, right = FALSE)
#Create table from the previous cut
tabla = table(cut)
#Accumulate all data
acumulada = cumsum(tabla)
#Obtain Relative accumulation
relativaAcum = acumulada/nrow(data)

tablaPrePercentiles = cbind(tabla, acumulada, relativaAcum)
start = 1
a = 5
percentiles = array()
for (x in seq(from = 0.25, to = 1, by = 0.25))
{
    PN = x * nrow(data)
    
    #Look for the accumulated Relative
    for(y in(start:nrow(tablaPrePercentiles)))
    {
        if (tablaPrePercentiles[y, 3] >= x)
        {
            Li = 5*(y-1)
            prevFi = tablaPrePercentiles[y-1, 2]
            start = y
            f = tablaPrePercentiles[y, 1]
            break
        }
        
    }
    percentil = Li + (PN - prevFi)/(f) * a
    percentiles = c(percentil, percentiles)
}

percentiles = sort(percentiles, decreasing = FALSE)
View(percentiles)



