#____ Navigate to folder _____#
# setwd("c://folder/of/interest")



#____ openintro _____#
library(openintro)

data(MLB)
write.table(MLB, "MLB.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(ageAtMar)
write.table(ageAtMar, "ageAtMar.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(ballBearing)
write.table(ballBearing, "ballBearing.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(bdims)
write.table(bdims, "bdims.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(births)
write.table(births, "births.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(cars)
write.table(cars, "cars.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(census)
write.table(census, "census.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(classData)
write.table(classData, "classData.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(county)
write.table(county, "county.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(countyComplete)
write.table(countyComplete, "countyComplete.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(credits)
write.table(credits, "credits.txt", quote=FALSE, sep="\t", row.names=FALSE)

# elmhurst data not yet included in package so the code is not included here to write it to the package
# the elmhurst data may be retrieved from the textbook source files ("07" > "figures" > "elmhurstPlots" > "d.rda")

data(email)
write.table(email, "email.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(email50)
write.table(email50, "email50.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(friday)
write.table(friday, "friday.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(gifted)
write.table(gifted, "gifted.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(govRace10)
write.table(govRace10, "govRace10.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(gradesTV)
write.table(gradesTV, "gradesTV.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(heartTr)
write.table(heartTr, "heartTr.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(helium)
write.table(helium, "helium.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(houseRace10)
write.table(houseRace10, "houseRace10.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(hsb2)
write.table(hsb2, "hsb2.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(infMortRate)
write.table(infMortRate, "infMortRate.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(ipod)
write.table(ipod, "ipod.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(mammals)
write.table(mammals, "mammals.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(marathon)
write.table(marathon, "marathon.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(marioKart)
write.table(marioKart, "marioKart.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(mlbBat10)
write.table(mlbBat10, "mlbBat10.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(ncbirths)
write.table(ncbirths, "ncbirths.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(oscars)
write.table(oscars, "oscars.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(poker)
write.table(poker, "poker.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(possum)
write.table(possum, "possum.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(prRace08)
write.table(prRace08, "prRace08.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(president)
write.table(president, "president.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(run10)
write.table(run10, "run10.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(satGPA)
write.table(satGPA, "satGPA.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(senateRace10)
write.table(senateRace10, "senateRace10.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(smoking)
write.table(smoking, "smoking.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(textbooks)
write.table(textbooks, "textbooks.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(tgSpending)
write.table(tgSpending, "tgSpending.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(tips)
write.table(tips, "tips.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(unempl)
write.table(unempl, "unempl.txt", quote=FALSE, sep="\t", row.names=FALSE)



#____ OIdata _____#
library(OIdata)

data(birds)
write.table(birds, "birds.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(esi)
write.table(esi, "esi.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(ipo)
write.table(ipo[["facebook"]], "ipo_facebook.txt", quote=FALSE, sep="\t", row.names=FALSE)
write.table(ipo[["google"]], "ipo_google.txt", quote=FALSE, sep="\t", row.names=FALSE)
write.table(ipo[["linkedin"]], "ipo_linkedin.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(london_boroughs)
write.table(london_boroughs, "london_boroughs.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(military)
write.table(military, "military.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(murders)
write.table(murders, "murders.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(piracy)
write.table(piracy, "piracy.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(sp500)
write.table(sp500, "sp500.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(state)
write.table(state, "state.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(teacher)
write.table(teacher, "teacher.txt", quote=FALSE, sep="\t", row.names=FALSE)

data(ukDemo)
write.table(ukDemo, "ukDemo.txt", quote=FALSE, sep="\t", row.names=FALSE)

