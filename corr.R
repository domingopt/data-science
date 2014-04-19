corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    source("complete.R")
    results <- numeric(0)
    
    files <- list.files(path=directory, pattern="*.csv", full.names=T, recursive=FALSE)
    for(file in files) {
        data <- read.csv(file = file, header = TRUE)
        sumComplete <- sum(complete.cases(data))
        if(sumComplete >= threshold) {
            nitrate <- data$nitrate[complete.cases(data)]
            sulfate <- data$sulfate[complete.cases(data)]
            results <- c(results, cor(nitrate, sulfate))
        }
    }    
    results
}