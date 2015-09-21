pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    totalSum <- 0;
    totalCount <- 0;
    
    for (i in id) {
        file <- paste(directory,sprintf("%03d.csv",i), sep = "/")
        data <- read.csv(file)
        totalSum <- totalSum + sum(data[[pollutant]],na.rm = T)
        totalCount <- totalCount + length(na.omit(data[[pollutant]]))
    }
    
    totalSum/totalCount
  
}