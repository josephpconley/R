#sab-R-metrics Introduction

#set working directory
setwd("C:/workspace/joec/r")

#load hall of fame hitters data
hitters <- read.csv(file="hof.csv", h=T)

#plot(hitters$Yrs, hitters$H, xlab="Years Played", ylab="Hits", main="Total Hits by Years Played", pch=16, col="darkblue")

league <- read.csv(file="leagueoutcomes.csv", h=T)