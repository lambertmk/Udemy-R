#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

# 1. - profit for each month
monthly <- (revenue - expenses)
monthly

# 2. - profit after tax for each month (the tax rate is 30%)
tax <- round(monthly *.3, 2)
tax

profit_after_tax <- monthly - tax
profit_after_tax

# 3. - profit margin for each month - equals to profit a after tax divided by revenue
profit_margin <- round(profit_after_tax/revenue,2)*100
profit_margin

# 4. - good months - where the profit after tax was greater than the mean for the year
mean <- mean(profit_after_tax)
good_months <- profit_after_tax > mean
good_months

# 5. - bad months - where the profit after tax was less than the mean for the year
bad_months <- profit_after_tax < mean
bad_months

# 6. - the best month - where the profit after tax was max for the year
max <- max(profit_after_tax)
best <- profit_after_tax == max
best

#. 7. - the worst month - where the profit after tax was min for the year
min <- min(profit_after_tax)
worst <- profit_after_tax == min
worst
