#Data
mtcars

head(mtcars)
str(mtcars)

planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", 
             "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gass giant", "Gass giant", "Gass giant", "Gass giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)


# Create the data frame:
planets.df = data.frame(planets, type, diameter, rotation, rings)
str(planets.df)

planets.df[1:3,]
planets.df[6:8,]

furthest.planets.diameter <- planets.df[3:8, "diameter"]

# Create the rings.vector
rings.vector <- planets.df$rings

planets.df$rings

#Subset
planets.with.rings.df <- planets.df[planets.df$rings == TRUE, ]

# Planets smaller than earth:
small.planets.df = subset(planets.df, diameter < 1)

#Sorting
a <- c(100,9,101)
order(a)
a[order(a)]

# What is the correct ordering based on the planets.df$diameter variable?
positions <- order(planets.df$diameter, decreasing = TRUE)
# Create new 'ordered' data frame:
largest.first.df <- planets.df[positions, ]
