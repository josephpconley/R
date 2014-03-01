#Returns

# Assign the url to the csv file
data_url = "http://faculty.washington.edu/ezivot/econ424/sbuxPrices.csv"
# Load the data frame using read.csv
sbux_df = read.csv(data_url, header = TRUE, stringsAsFactors = FALSE) 
# sbux_df should be a data frame object. Data frames are rectangular data objects typically with
# observations in rows and variables in columns

str(sbux_df)
head(sbux_df)
tail(sbux_df)
print(class(sbux_df$Date))

sbux_df[1:5, "Adj.Close"]
sbux_df[1:5, 2]
sbux_df$Adj.Close[1:5]
sbux_df$Adj.Close[1:5, drop=FALSE]
closing_prices = sbux_df[, 2, drop=FALSE] 

# Find indices associated with the dates 3/1/1994 and 3/1/1995
index_1 = which(sbux_df$Date == "3/1/1994")
index_2 = which(sbux_df$Date == "3/1/1995")
# Extract prices between 3/1/1994 and 3/1/1995
some_prices = sbux_df[index_1:index_2, 2] 

# Create a new data frame containing the price data with the dates as the row names
sbux_prices_df = sbux_df[, "Adj.Close", drop=FALSE]
rownames(sbux_prices_df) = sbux_df$Date
head(sbux_prices_df)
sbux_prices_df["3/1/1994", 1]

# With Dates as rownames, you can subset directly on the dates.
# Find indices associated with the dates 3/1/1994 and 3/1/1995.
price_1 = sbux_prices_df["3/1/1994", 1]
price_2 = sbux_prices_df["3/1/1995", 1]

# Now add all relevant arguments to the plot function below to get a nicer plot
plot(sbux_df$Adj.Close, type="l", col="blue", lwd=2, ylab="Adjusted close", main="Monthly closing price of SBUX")
legend(x='topleft',legend='SBUX', lty=1, lwd=2, col='blue')

sbux_prices_df = sbux_df[, "Adj.Close", drop = FALSE]

# Denote n the number of time periods
n = nrow(sbux_prices_df)
sbux_ret = (sbux_prices_df[2:n,1] - sbux_prices_df[1:(n-1),1]) / sbux_prices_df[1:(n-1),1]
# Notice that sbux_ret is not a data frame object
class(sbux_ret)

# Now add dates as names to the vector and print the first elements of
# sbux_ret to the console to check
names(sbux_ret) = sbux_df[2:n, 1]
print(head(sbux_ret))

# Compute continuously compounded 1-month returns
sbux_ccret = log(sbux_prices_df[2:n, 1]) - log(sbux_prices_df[1:(n - 1), 1])
# Assign names to the continuously compounded 1-month returns
names(sbux_ccret) = sbux_df[2:n, 1]
# Show sbux_ccret
head(sbux_ccret)

# Compare the simple and cc returns
head(cbind(sbux_ret, sbux_ccret))

# The simple returns (sbux_ret) and the continuously compounded returns
# (sbux_ccret) have been preloaded in your workspace

# Plot the returns on the same graph
plot(sbux_ret, type = "l", col = "blue", lwd = 2, ylab = "Return", main = "Monthly Returns on SBUX")

# Add horizontal line at zero
abline(h = 0)

# Add a legend
legend(x = "bottomright", legend = c("Simple", "CC"), lty = 1, lwd = 2, col = c("blue", 
                                                                                "red"))
# Add the continuously compounded returns
lines(sbux_ccret, col="red", lwd=2)

head(sbux_ret)

# Compute gross returns
sbux_gret = sbux_ret + 1
head(sbux_gret)

# Compute future values
sbux_fv = cumprod(sbux_gret)
head(sbux_fv)
# Plot the evolution of the $1 invested in SBUX as a function of time
plot(sbux_fv, type = "l", col = "blue", lwd = 2, ylab = "Dollars", main = "FV of $1 invested in SBUX")
