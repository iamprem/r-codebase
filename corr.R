corr <- function(directory, threshold = 0) {
    
    result <- numeric(0)
    data <- complete(directory)
    for (idx in 1:nrow(data)) {
        if (data[idx,2] > threshold) {
            file <- paste(directory,sprintf("%03d.csv",data[idx,1]), sep = "/")
            compdata <- read.csv(file)
            compdata <- compdata[complete.cases(compdata),]
            result <- c(result, cor(compdata$sulfate, compdata$nitrate))
        }
    }
    result
}