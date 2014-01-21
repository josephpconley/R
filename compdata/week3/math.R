plot(0, 0, main = expression(theta == 0), ylab = expression(hat(gamma) == 0),
      xlab = expression(sum(x[i] * y[i], i==1, n)))

x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
plot(x, y, xlab=substitute(bar(x) == k, list(k=mean(x))),
           ylab=substitute(bar(y) == k, list(k=mean(y)))
)