rankall <- function(outcome, num = "best") {
  ## Read outcome data
  outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ## Check that outcomes are valid
  outcomes <- c("heart attack", "heart failure", "pneumonia")
  
  if(!is.element(outcome, outcomes)){
    stop(paste("Invalid outcome, must be one of ", paste(outcomes, collapse = ', ')))
  }
  
  map <- new.env(hash=T, parent=emptyenv())
  map[["heart attack"]] <- 11
  map[["heart failure"]] <- 17
  map[["pneumonia"]] <- 23
  
  index <- map[[outcome]]
  outcomeData[, index] <- as.numeric(outcomeData[, index])
  
  ## For each state, find the hospital of the given rank
  states <- factor(outcomeData$State)
  hospitals <- c()
  for(s in levels(states)){
    stateOutcomes = subset(outcomeData, outcomeData$State == s & !is.na(outcomeData[, index]))    
    n <- if(num =="best") 1 else if(num =="worst") nrow(stateOutcomes) else num
    h <- if(n > nrow(stateOutcomes)){
      NA
    }else{
      sorted <- stateOutcomes[order(stateOutcomes[,index], stateOutcomes$Hospital.Name), ]
      sorted$Hospital.Name[n]
    }
    hospitals <- c(hospitals, h)
  }
  
  ## Return a data frame with the hospital names and the (abbreviated) state name
  data.frame(hospital = hospitals, state = levels(states))
}
