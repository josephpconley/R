#Regression of OPS Stats
#http://baseballwithr.wordpress.com/2013/12/18/regression-of-ops-stats/

Batting <- read.csv("lahman2013/Batting.csv")
Batting.12.13 <- subset(batting, yearID==2012 | yearID==2013)

#Collapse hitting stats to one line per player
sum.function <- function(d){
  d1 <- d[, 6:23]
  apply(d1, 2, sum)
}
D <- ddply(Batting.12.13, .(playerID, yearID), sum.function)

#define stats
Batting.12.13$X1B <- with(Batting.12.13, H - X2B - X3B - HR)
Batting.12.13$SLG <- with(Batting.12.13,
                         (X1B + 2 * X2B + 3 * X3B + 4 * HR) / AB)
Batting.12.13$OBP <- with(Batting.12.13,
                         (H + BB + HBP) / (AB + BB + HBP + SF))
Batting.12.13$OPS <- with(Batting.12.13, SLG + OBP)

#get 2012 and 2013 on the same line
Batting.2012 <- subset(Batting.12.13, yearID==2012)
Batting.2013 <- subset(Batting.12.13, yearID==2013)
merged.Batting <- merge(Batting.2012, Batting.2013, by="playerID")

#only want to look at players with over 300AB
merged.Batting.300 <- subset(merged.Batting, 
                             AB.x >= 300 & AB.y >=300)

#measure improvement
merged.Batting.300$Improvement <- with(merged.Batting.300, 
                                       OPS.y - OPS.x)


#construct scatterplot comparing 2012 to 2013 OPS
with(merged.Batting.300, 
     plot(OPS.x, Improvement, pch=".",
      xlab="2012 OPS", ylab="Improvement in 2013 OPS", 
      main="OPS for 2 Years for MLB Batters With Minimum 300 AB"))
fit <- lm(Improvement ~ OPS.x, data=merged.Batting.300)
abline(fit, lwd=3, col="red")
with(merged.Batting.300, 
     text(OPS.x, Improvement, substr(playerID, 1, 5)))

#let's look at 2013 Phils now
merged.Batting.Phils <- subset(merged.Batting, teamID.y=="PHI")

#get rid of AB requirement
merged.Batting$Improvement <- with(merged.Batting, OPS.y - OPS.x)

#construct scatterplot comparing 2012 to 2013 OPS
with(merged.Batting.Phils, 
     plot(OPS.x, Improvement, pch=".",
      xlab="2012 OPS", ylab="Improvement in 2013 OPS", 
      main="OPS for 2 Years for Phillies"))
fit <- lm(Improvement ~ OPS.x, data=merged.Batting.Phils)
abline(fit, lwd=3, col="red")
with(merged.Batting.Phils, 
     text(OPS.x, Improvement, substr(playerID, 1, 5)))

#write stats to csv
write.csv(file="phils.csv", x=merged.Batting.Phils)