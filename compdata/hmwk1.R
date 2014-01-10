data <- read.csv("hw1_data.csv")

#first n rows
head(data, n)

#count rows
nrow(data)

#last n rows
tail(data, 2)

#grab 47th row in the first column
data[47, 1]

#find all NA values
apply(is.na(data),2,sum)

#get all ozone values that are valid
ozone <- subset(data, !is.na(Ozone))[1]

#get mean
apply(ozone, 2, mean)

sub2 <- subset(data, Ozone > 31 & Temp > 90)["Solar.R"]
apply(sub2, 2, mean)

june <- subset(data, Month == 6)["Temp"]
apply(june, 2, mean)

may <- subset(data, Month == 5 & !is.na(Ozone))["Ozone"]
apply(may, 2, max)
