rankhospital <- function(state, outcome, num = "best") {
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
  
  ## Return hospital name in that state with the given rank 30-day death rate
  map <- new.env(hash=T, parent=emptyenv())
  map[["heart attack"]] <- 11
  map[["heart failure"]] <- 17
  map[["pneumonia"]] <- 23
  
  index <- map[[outcome]]
  outcomeData[, index] <- as.numeric(outcomeData[, index])
  stateOutcomes = subset(outcomeData, outcomeData$State == state & !is.na(outcomeData[, index]))

  n <- if(num =="best") 1 else if(num =="worst") nrow(stateOutcomes) else num
  if(n > nrow(stateOutcomes)){
    NA
  }else{
    sorted <- stateOutcomes[order(stateOutcomes[,index], stateOutcomes$Hospital.Name), ]
    sorted$Hospital.Name[n]
  }
}

#rankhospital("TX", "heart failure", 4)
#rankhospital("MD", "heart attack", "worst")
#rankhospital("MN", "heart attack", 5000)