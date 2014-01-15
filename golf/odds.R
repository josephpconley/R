golf <- read.csv("golf/owgr.csv")
tiger <- subset(golf, name_country=="Tiger Woods United States")
tiger$yearweek <- with(tiger, year + (week/100))

 Simple Scatterplot
attach(mtcars)
plot(tiger$yearweek, tiger$rank, main="Tiger's World Rank 2008-2014", 
 xlab="Year.Week", ylab="Tiger World Rank", pch=19)


