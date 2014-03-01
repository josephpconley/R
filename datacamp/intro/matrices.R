# Matrices
matrix(1:9, byrow=TRUE, nrow=3)

# Box office Star Wars: In Millions (!)  First element: US, Second
# element: Non-US
new.hope <- c(460.998007, 314.4)
empire.strikes <- c(290.475067, 247.9)
return.jedi <- c(309.306177, 165.8)

# Add your code below to construct the matrix
star.wars.matrix = matrix(c(new.hope, empire.strikes, return.jedi), byrow=TRUE, nrow=3)

rownames(star.wars.matrix) = c("A new hope", "The empire strikes back", "Return of the Jedi")
colnames(star.wars.matrix) = c("US", "non-US")

worldwide.vector <- rowSums(star.wars.matrix)

# Bind the new variable total.per.movie as a column to star.wars
all.wars.matrix <- cbind(star.wars.matrix, rowSums(star.wars.matrix))

#get average of all non-us, and only the first two movies
non.us.all  <- mean(star.wars.matrix[,2])
non.us.some <- mean(star.wars.matrix[1:2, 2])

box.office.all <- c(461, 314.4,290.5, 247.9,309.3,165.8)
movie.names    <- c("A new hope","The empire strikes back","Return of the Jedi")
col.titles     <- c("US","non-US")
star.wars.matrix      <- matrix(box.office.all, nrow=3, byrow=TRUE,dimnames=list(movie.names,col.titles)) 
ticket.prices.matrix  <- matrix( c(5,5,6,6,7,7), nrow=3,byrow=TRUE,dimnames=list(movie.names,col.titles)) 

visitors <- star.wars.matrix / ticket.prices.matrix
average.us.visitor <- mean(visitors[,1])
average.non.us.visitor <- mean(visitors[,2])