x <- rnorm(100)
hist(x)

y <- rnorm(100)
plot(x, y)

par(mar = c(2,2,2,2))
plot(x, y)

par(mar = c(4,4,2,2))
plot(x, y)

plot(x,y, pch = 20)
plot(x,y, pch = 2)
plot(x,y, pch = 3)

plot(x,y, pch = 20)
title("Scatter")
text(-2, -2, "label")
legend("topleft", legend = "Data 1", pch = 20)

fit <- lm(y ~ x)
abline(fit)
abline(fit, lwd = 3)
abline(fit, lwd = 3, col = "blue")
?abline

plot(x, y, xlab = "weight", ylab = "height", main = "Title", pch = 4)


#multi plots
z <- rpois(100, 2)
par(mfrow = c(2, 1))
plot(x, y, pch = 20)
plot(x, z, pch = 19)

par(mar = c(2,2,1,1))
plot(x, y, pch = 20)
plot(x, z, pch = 19)

#data
par(mfrow = c(1,1))
x <- rnorm(100)
y <- x + rnorm(100)

g <- gl(2, 50, labels = c("Male", "Female"))
str(g)
?gl
plot(x, y)
plot(x, y, type = "n")
points(x[g == "Male"], y[g == "Male"], col = "blue", pch = 19)
points(x[g == "Female"], y[g == "Female"], col = "pink", pch = 19)

x
x[g == "Male"]
