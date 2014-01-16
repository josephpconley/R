corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations

  comp <- complete("specdata") 
  valid <- subset(comp, nobs > threshold)

  corrVector <- c()
  if(nrow(valid) > 0){
    for(i in 1:length(valid$id)){
      m <- getmonitor(valid$id[i], directory)
      validObs <- subset(m, !is.na(sulfate) & !is.na(nitrate))  
      corrVector[i] <- cor(validObs$sulfate, validObs$nitrate)
    }
    corrVector
  }else{
    numeric(0)
  }
}