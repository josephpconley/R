#Colors and Plots
library(grDevices)
pal <- colorRamp(c("red", "blue"))
pal
pal(0)
pal(1)
pal(0.5)
pal(seq(0, 1, len = 10))

pal <- colorRampPalette(c("red", "yellow"))
pal(2)
pal(10)

library(RColorBrewer)
cols <- brewer.pal(3, "BuGn")
cols
pal <- colorRampPalette(cols)
image(volcano, col = pal(20))

x <- rnorm(10000)
y <- rnorm(10000)
smoothScatter(x, y)

plot(x, y, pch = 19)
plot(x,  y,	col	=	rgb(0,	0,	0,	0.2),	pch	=	19)	

#Dates and Times
x <- as.Date("1970-01-01")
x

?unclass
unclass(x)
unclass(as.Date("1970-01-02"))

x <- Sys.time()
x

p <- as.POSIXlt(x)
names(unclass(p))

p$sec

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x - y

x <- as.POSIXlt(x)
x - y

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x - y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y - x

#Regex
#
#^ matches start of a line
#
#$ matches end of a line
#
#We can list a set of characters we will accept at a given point in the match
#[Bb][Uu][Ss][Hh]
#
#range of letters
#[a-z] or [a-zA-Z]
#
#. refers to any character
#
#| means or
#
#? means optional
#
#* means 0 or many
#
#+ means 1 or many
#
#{} means interval, as in {1,5}

#Bmore Homicides
setwd("compdata/week4")

#Regex in R
homicides <- readLines("homicides.txt")
homicides[1]
str(homicides)

length(grep("iconHomicideShooting", homicides))
length(grep("iconHomicideShooting|icon_homicide_shooting", homicides))
length(grep("Cause: shooting", homicides))
length(grep("Cause: [Ss]hooting", homicides))
length(grep("[Ss]hooting", homicides))

grep("^New", state.name)
grep("^New", state.name, value = TRUE)
grepl("^New", state.name)

regexpr("<dd>[F|f]ound(.*)</dd>", homicides[1:10])
substr(homicides[1], 177, 177 + 93 - 1)

r <- regexec("<dd>[F|f]ound on (.*?)</dd>", homicides)
m <- regmatches(homicides, r)
m
dates <- sapply(m, function(x) x[2])
dates <- as.Date(dates, "%B %d, %Y")
hist(dates, "month", freq = TRUE)
