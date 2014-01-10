wins <- rep(0,1000)
for(i in 1:1000){
  #roll dice
  d <- sample(1:6, 2, replace=T)

  #shooter wins in Come Out
  if(sum(d) == 7 || sum(d) == 11) wins[i] <- 1
}
sum(wins)