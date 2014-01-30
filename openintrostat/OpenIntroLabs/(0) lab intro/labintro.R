#labintro.R
source("http://www.openintro.org/stat/data/arbuthnot.R")
head(arbuthnot)
dim(arbuthnot)
names(arbuthnot)

arbuthnot$boys
arbuthnot$girls

plot(x = arbuthnot$year, y = arbuthnot$girls)
plot(x = arbuthnot$year, y = arbuthnot$girls, type = "l")

arbuthnot$boys + arbuthnot$girls

plot(arbuthnot$year, arbuthnot$boys + arbuthnot$girls, type = "l")

plot(arbuthnot$year, arbuthnot$boys/(arbuthnot$boys + arbuthnot$girls), type = "l")


source("http://www.openintro.org/stat/data/present.R")
present$year
dim(present)
names(present)
head(present)

plot(present$year, present$boys/(present$boys + present$girls), type = "l")

#find year with max children
present$total = present$boys + present$girls
present[present$total == max(present$total),]

