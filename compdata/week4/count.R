count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  if(is.null(cause)){
    stop("Cause cannot be NULL!")
  }
  
  ## Check that specific "cause" is allowed; else throw error
  range <- c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown")
  
  if(!is.element(cause, range)){
    stop(paste("Invalid cause, must be one of ", paste(range, collapse = ', ')))
  }
  
  ## Read "homicides.txt" data file
  homicides <- readLines("homicides.txt")
  
  firstLetter <- substr(cause, 0, 1)
  regex <- paste("Cause: [", firstLetter, toupper(firstLetter), "]", substr(cause, 2, nchar(cause)), sep = "")
  
  ## Extract causes of death
  ## Return integer containing count of homicides for that cause
  length(grep(regex, homicides))
}