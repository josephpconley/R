#probability review

# X ~ N(0.05, (0.10)^2)
mu_x = 0.05
sigma_x = 0.1

# Pr(X > 0.10)
1 - pnorm(0.10, mean=mu_x, sd=sigma_x)

# Pr(X < -0.10)
pnorm(-0.10, mean=mu_x, sd=sigma_x)

# Pr(-0.05 < X < 0.15)
pnorm(0.15, mean=mu_x, sd=sigma_x) - pnorm(-0.05, mean=mu_x, sd=sigma_x)

# 1%, 5%, 95% and 99% quantile
qnorm(c(0.01, 0.05, 0.95, 0.99), mean=mu_x, sd=sigma_x)

# Normally distributed monthly returns
x_vals = seq(-0.25, 0.35, length.out = 100)
MSFT = dnorm(x_vals, mean=0.05, sd=0.1)  
SBUX = dnorm(x_vals, mean=0.025, sd=0.05)

# Normal curve for MSFT
plot(x_vals, MSFT, type = "l", col = "blue", ylab = "Normal curves", ylim = c(0, 
                                                                              8))
# Add normal curve for SBUX
lines(x_vals, SBUX, col = "red")

# Add plot legend
legend("topleft", legend = c("Microsoft", "Starbucks"), col = c("blue", "red"), lty = 1)

#VaR (i.e. given P < 0.01, find out loss based on init investment)

#Simple returns

# 1% value-at-risk
qnorm(0.01, mean=0.04, sd=0.09) * 100000

# 5% value-at-risk
qnorm(0.05, mean=0.04, sd=0.09) * 100000

#Continuous returns

# 1% value-at-risk
(exp(qnorm(0.01, mean=0.04, sd=0.09)) - 1) * 100000

# 5% value-at-risk
(exp(qnorm(0.05, mean=0.04, sd=0.09)) - 1) * 100000

# Vectors of prices
PA = c(38.23, 41.29) 
PC = c(41.11, 41.74)

# Simple monthly returns
RA = (PA[2] - PA[1])/PA[1]
RC = (PC[2] - PC[1])/PC[1]

# Continuously compounded returns
rA = log(1 + RA)
rC = log(1 + RC)

# Cash dividend per share
DA = 0.10
# Simple total return
RA_total = (PA[2] - PA[1] + DA)/PA[1]
# Dividend yield
DY = DA / PA[1]

# Simple annual return
RA_annual = (1 + RA)^12 - 1
# Continuously compounded annual return
rA_annual = log(1 + RA_annual)

# Portfolio shares
xA = 8000/10000
xC = 2000/10000

# Simple monthly return
(xA * RA) + (xC * RC)