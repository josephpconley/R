#Lists

my.vector <- 1:10
my.matrix <- matrix(1:9, ncol = 3)
my.df <- mtcars[1:10, ]

# Construct list with these different elements:
my.list <- list(my.vector, my.matrix, my.df)
# Show list:
my.list

#Named list
my.list.named <- list(VECTOR=my.vector, MATRIX=my.matrix, DATAFRAME=my.df)

actors <- c("Jack Nicholson", "Shelley Duvall", "Danny Lloyd", "Scatman Crothers", 
            "Barry Nelson")
sources <- c("IMDb1", "IMDb2", "IMDB3")
comments <- c("Best Horror Film I've Ever Seen", "A truly brilliant and scary film from Stanley Kubrick", 
              "A masterpiece of psychological horror")
scores <- c(4.5, 4, 5)
reviews <- data.frame(scores, sources, comments)

# Create named list
shining.list <- list(moviename = "The Shining", actors = actors, reviews = reviews)

# We forgot something: Add the year to shining.list ! Add your code below:
# Create named list (with the year of the movie)
shining.list <- list(moviename = "The Shining", year = 1980, actors = actors, reviews = reviews)

# Have a look at shining.list. Remember str()?
str(shining.list)

c(shining.list, year=1980)

# Select from the shining.list:
last.actor <- shining.list[[2]][5]
second.review <- shining.list$reviews[2,]
