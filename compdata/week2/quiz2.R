cube <- function(x, n) {
        x^3
}
cube(3)

pow <- function(x = 4, n = 3) {
        x^n
}
pow()

x <- 1:10
if(x > 5) {
        x <- 0
}

library(datasets)
data(iris)
?iris
str(iris)

iris.virginica = subset(iris, Species=="virginica")
mean(iris.virginica$Sepal.Length)

#alternative way to figure it out
tapply(iris$Sepal.Length, iris$Species, mean) 

apply(iris[, 1:4], 2, mean)
?apply

library(datasets)
data(mtcars)

?mtcars
str(mtcars)

?split
split(mtcars$mpg, mtcars$cyl)
sapply(split(mtcars$mpg, mtcars$cyl), mean)

avghp <- sapply(split(mtcars$hp, mtcars$cyl), mean)
abs(avghp[1] - avghp[3])

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}

z <- 10
f(3)