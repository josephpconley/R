best <- function(state, outcome) {
  ## Read outcome data
  outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that state and outcome are valid
  states <- table(outcomeData$State)
  if(is.na(states[state])){
    stop(paste("Invalid state: ", state))
  }
  
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  
  if(!is.element(outcome, outcomes)){
    stop(paste("Invalid outcome, must be one of ", paste(outcomes, collapse = ', ')))
  }

  map <- new.env(hash=T, parent=emptyenv())
  map[["heart attack"]] <- 11
  map[["heart failure"]] <- 17
  map[["pneumonia"]] <- 23
  
  ## Return hospital name in that state with lowest 30-day death rate
  index <- map[[outcome]]
  outcomeData[, index] <- as.numeric(outcomeData[, index])
  stateOutcomes = subset(outcomeData, outcomeData$State == state & !is.na(outcomeData[, index]))
  
  m <- min(stateOutcomes[, index], na.rm = TRUE)
    
  best <- subset(stateOutcomes, stateOutcomes[, index] == m)
  head(sort(best$Hospital.Name), 1)
}  