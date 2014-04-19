add2 <- function(x, y) {
    x + y
}

above10 <- function(x) {
    use <- x > 10
    x[use]
}

above <- function(x, n = 10) {
    use <- x > n
    x[use]
}

columnmean <- function(matrix, na.rm=TRUE) {
    columns <- ncol(matrix)
    means <- numeric(nc)
    for (col in 1:columns) {
        means[col] <- mean(matrix[, col], na.rm = na.rm)
    }
    means
}

quizz <- function(x) {
    x <- 1:10
    if(x > 5) {
        x <- 0
    }
}

f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}
