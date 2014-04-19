complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    results <- data.frame(id = 0, nobs = 0)
    for(i in 1:length(id)) {
        fileName <- sprintf("%s/%03d.csv", directory, id[i])
        data <- read.csv(file = fileName, header = TRUE)
        sumComplete <- sum(complete.cases(data))
        results[i,] <- c(id[i], sumComplete)
    }

    results
}