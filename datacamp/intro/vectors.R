# Vectors
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

#names for vectors
poker_vector = c(140, -50, 20, -120, 240)
roulette_vector = c(-24, -50, 100, -350, 10)

days_vector = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) = names(poker_vector) = days_vector

# compare boolean for entire vector
selection_vector = poker_vector > 0
poker_winning_days <- poker_vector[selection_vector]