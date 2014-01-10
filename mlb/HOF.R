options(stringAsFactors=F)
master <- read.csv("lahman2013/Master.csv")
HoF = read.csv("lahman2013/HallOfFame.csv")

#select pitcher
pitcher = "Jack Morris"
#get HOF voting data
pitHoFid = subset(master, paste(nameFirst, nameLast)==pitcher)$hofID
pitHOF = subset(HoF, hofID==pitHoFid)
pitHOF$pct = 100 * pitHOF$votes / pitHOF$ballots