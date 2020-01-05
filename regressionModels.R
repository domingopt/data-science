library(UsingR); data(galton)

# Defining the plot space as 1 row and 2 columns
par(mfrow=c(1,2))
# Plot 2 histograms
hist(galton$child, col="blue", breaks=100)
hist(galton$parent, col="blue", breaks=100)
