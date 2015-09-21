complete <- function(directory, id = 1:332) {
    
    result <- data.frame()
    for (i in id) {
        file <- paste(directory,sprintf("%03d.csv",i), sep = "/")
        data <- read.csv(file)
        result <- rbind(result,c(i, nrow(data[complete.cases(data),])))
        
    }
    colnames(result) <- c('id', 'nobs')
    result
}