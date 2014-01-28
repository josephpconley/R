#hmwk4
getwd()
setwd("compdata/week4")
homicides <- readLines("homicides.txt")

count("other")
num <- count("unknown")
print(num)

agecount(3)
agecount(1)
num <- agecount(21)
print(num)


#submit
source("http://spark-public.s3.amazonaws.com/compdata/scripts/submitscript4.R")
submit()
