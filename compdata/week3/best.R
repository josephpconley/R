best <- function(state, outcome) {
  ## Read outcome data
  outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that state and outcome are valid
  states <- table(outcomeData$State)
  if(is.na(states[state])){
    stop(paste("Invalid state: ", state))
  }
  
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  if(is.na(outcomes[outcome])){
    stop(paste("Invalid outcome, must be one of ", paste(outcomes, collapse = ', ')))
  }
  
  ## Return hospital name in that state with lowest 30-day death rate
  outcomeData[, 11] <- as.numeric(outcomeData[, 11])
  outcomeData[, 17] <- as.numeric(outcomeData[, 17])
  outcomeData[, 23] <- as.numeric(outcomeData[, 23])
  
  
}  