pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files

    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".

    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used

    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    values <- numeric(0)
    
    for(i in 1:length(id)) {
        fileName <- sprintf("%s/%03d.csv", directory, id[i])
        data <- read.csv(file = fileName, header = TRUE)
        values <- c(values, data[, pollutant])
    }

    finalMean <- mean(values, trim = 0, na.rm = TRUE)
    finalMean
}