#load odds and set field types
odds <- read.csv("golf/odds.csv")
odds$name <- as.character(odds$name)
odds$tournament <- as.character(odds$tournament)
odds$odds <- as.character(odds$odds)
odds$won <- as.character(odds$won)
odds$payoff <- as.numeric(odds$payoff)

#biggest payoff
wins <- subset(odds, won=="true")
max(wins$payoff)
wins.best <- wins[rev(order(wins$payoff)),]

#field stats
field <- subset(odds, grepl("Field", name) == 1)
field$result <- with(field, ifelse(grepl("true", won), 100 * payoff, -100))

field.wins <- subset(field, grepl("true", won) == 1)

#historical winning probability of the field
nrow(field.wins)/nrow(field)

#find outcome if I bet $100 on field each time
sum(field$result)

#average odds for the field
mean(field$payoff)

#best payout
max(field$result)