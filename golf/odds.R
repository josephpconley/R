#load odds and set field types
odds <- read.csv("golf/odds.csv")
odds$name <- as.character(odds$name)
odds$tournament <- as.character(odds$tournament)
odds$odds <- as.character(odds$odds)
odds$won <- as.character(odds$won)
odds$payoff <- as.numeric(odds$payoff)
odds$id <- with(odds, paste(year, "-", tournament))

#biggest payoff
wins <- subset(odds, won=="true")
max(wins$payoff)
wins.best <- wins[rev(order(wins$payoff)),]
head(wins.best)

#field stats
field <- subset(odds, grepl("Field", name) == 1)
field.wins <- subset(field, grepl("true", won) == 1)
field.wins.best <- field.wins[rev(order(field.wins$payoff)),]
head(field.wins.best)

#number of events offering a field bet
nrow(field)

#number of times the field hit
nrow(field.wins)

#historical winning probability of the field
nrow(field.wins)/nrow(field)

#find outcome if I bet $25 on field each time
field$bet <- with(field, ifelse(grepl("true", won), 25 * payoff, -25))
sum(field$bet)

#average odds for the field
mean(field$payoff)
