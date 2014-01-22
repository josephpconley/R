#hmwk3 - Medicare
#1)
setwd("compdata/week3")

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
nrow(outcome)

outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 17] <- as.numeric(outcome[, 17])
outcome[, 23] <- as.numeric(outcome[, 23])
## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11], xlab="30-day Death Rate", main="Heart Attack 30-day Death Rate")


#2) obtain 30-day death rate from heart attack, heart failure, pneumonia
#11
summary(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
#17
summary(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
#23
summary(outcome$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)


par(mfrow = c(3, 1))
hist(outcome[, 11], xlab="30-day Death Rate", xlim=range(10,20), main="Heart Attack")
hist(outcome[, 17], xlab="30-day Death Rate", xlim=range(10,20), main="Heart Failure")
hist(outcome[, 23], xlab="30-day Death Rate", xlim=range(10,20), main="Heart Pneumonia")
  
par(mfrow = c(1, 3))
summary(outcome[,11])
median(outcome[,11], na.rm=TRUE)

abline(v = median(outcome[,11], na.rm=TRUE), col="red")
abline(v = median(outcome[,17], na.rm=TRUE))
abline(v = median(outcome[,23], na.rm=TRUE))
abline(v = c(10,15,20))
?abline


#3)
table(outcome$State)
states <- with(outcome, table(outcome$State))
validStates <- states[states > 20]
validStates
?table
?array

class(outcome$State)

outcome2 <- subset(outcome, !is.na(validStates[outcome$State]))
table(outcome2$State)

par(mfrow = c(1, 1), las = 2)
death <- outcome2[, 11]
state <- outcome2$State
boxplot(death ~ state, ylab = "30-day Death Rate", main = "Heart Attack 30-day Death Rate by State")
?boxplot
?par

#4)
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
hospital <- read.csv("hospital-data.csv", colClasses = "character")
outcome.hospital <- merge(outcome, hospital, by = "Provider.Number")

death <- as.numeric(outcome.hospital[, 11]) ## Heart attack outcome
npatient <- as.numeric(outcome.hospital[, 15])
owner <- factor(outcome.hospital$Hospital.Ownership)

library(lattice)
?xyplot
xyplot(death ~ npatient | owner, xlab="Number of Patients Seen", ylab="30-day Death Rate",
       main="Heart Attach 30-day Death Rate by Ownership",
       panel = function(x,y) { 
         panel.xyplot(x,y)
         panel.lmline(x,y)
      })

#5 best.R)
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
table(outcome$State)

best("MD", "pneumonia")



setwd("compdata/week3")
outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

outcomeData[, 11] <- as.numeric(outcomeData[, 11])
outcomeData[, 17] <- as.numeric(outcomeData[, 17])
outcomeData[, 23] <- as.numeric(outcomeData[, 23])

nrow(outcomeData)
state <- "PA"
stateOutcomes = subset(outcomeData, outcomeData$State == state & !is.na(outcomeData[, 11]))
stateOutcomes[,11]
stateOutcomes$Hospital.Name
best <- subset(stateOutcomes, stateOutcomes[, 11] == min(stateOutcomes[, 11], na.rm = TRUE))
best$Hospital.Name

joe <- new.env(hash=T, parent=emptyenv())
joe[["heart attack"]] <- 11
joe[["heart failure"]] <- 17
joe[["pneumonia"]] <- 23


#submit
source("http://spark-public.s3.amazonaws.com/compdata/scripts/submitscript.R")
