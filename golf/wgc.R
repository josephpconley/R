#load odds and set field types
odds <- read.csv("golf/odds.csv")
odds$name <- as.character(odds$name)
odds$tournament <- as.character(odds$tournament)
odds$odds <- as.character(odds$odds)
odds$won <- as.character(odds$won)
odds$payoff <- as.numeric(odds$payoff)
odds$id <- with(odds, paste(year, "-", tournament))

#WGC Match Play
regex <- "WGC-Accenture Match Play|WGC-Accenture|WGC-Match Play Champ"
wgc <- subset(odds, grepl(regex, tournament) == 1)
nrow(wgc)

subset(wgc, year = 2009)
