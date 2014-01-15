x <- 5
if(x > 3){
  y <- 10
}else{
  y <- 0
}

for(i in 1:10){
  print(i)
}

alpha <- c("A","b","c", "d")
for(letter in alpha){
  print(letter)
}

z <- 5 
while(z >= 3 && z <= 10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coin == 1){
    z <- z + 1
  }else{
    z <- z - 1
  }
}

f <- function(a, b = 1, c = 2, d = NULL){
  a^2 + b^2 + c^2  
}

mapply(f, 1:5, 1:5, 5:9)

noise <- function(n, mean, sd){
  rnorm(n, mean, sd)
}

mapply(noise, 1:5, 1:5, 2)




