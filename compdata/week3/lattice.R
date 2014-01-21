library(lattice)
x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
f <- gl(2, 50, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f)

library(help = lattice)
data(environmental)
?environmental
head(environmental)
xyplot(ozone ~ radiation, data = environmental)

#third variable(temperature), let's plot for different temps
summary(environmental$temperature)

temp.cut <- equal.count(environmental$temperature, 4)
temp.cut
xyplot(ozone ~ radiation | temp.cut, data = environmental)
