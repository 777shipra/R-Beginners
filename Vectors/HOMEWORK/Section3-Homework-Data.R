
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

TaxRate=30

#monthly revenue w/o tax
ProfitPretax = revenue-expenses
ProfitPretax

# Calculate profit after tax directly
ProfitAfterTax = round(ProfitPretax*(1-TaxRate/100),2)
ProfitAfterTax

# Profit margin from After tax profit and converted into %
ProfitMargin = round(ProfitAfterTax/revenue,2)*100
ProfitMargin

# mean monthly profit
AvgProfit = mean(ProfitAfterTax)
AvgProfit

#good months have profit greater than mean and bad don't
BadMonths = which(ProfitAfterTax<AvgProfit)
GoodMonths = which(!(ProfitAfterTax<AvgProfit))
GoodMonths
BadMonths

# Best and worth month's profit after tax
BestMonth = which.max(ProfitAfterTax)
WorstMonth = which.min(ProfitAfterTax)
BestMonth
WorstMonth

# convert money into increments of 1000
revenueK = round(revenue/1000,0)
expensesK = round(expenses/1000,0)
ProfitPretaxK = round(ProfitPretax/1000,0)
ProfitAfterTaxK = round(ProfitAfterTax/1000,0)

# print off all the stuff
revenueK
expensesK
ProfitPretaxK
ProfitAfterTaxK
ProfitMargin
GoodMonths
BadMonths
BestMonth
WorstMonths