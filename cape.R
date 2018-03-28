# The following commands are entered in R Studio

install.packages("Quandl")                                    # Install Quandl package for R
library(Quandl)

market = Quandl("YALE/SPCOMP", end_date="2017-12-30")         # Retrieve Shiller Data

View(market)                                                  # View data in R Studio

date=market$Year                                              # define the 'date' variable using the time series
cape=market$`Cyclically Adjusted PE Ratio`                    # define the 'cape' variable using the time series
dividend=market$`Real Dividend`                               # define the 'dividend' variable using the time series

plot(cape,dividend, type='l')                                 # Create line graph comparing CAPE to real dividends

a=log(market$`Cyclically Adjusted PE Ratio`)                  # define log of CAPE as new variable
b =log(market$`Real Dividend`)                                # define log of Real Dividends as new variable

plot(a,b, type='l')                                           # graph the log of CAPE against the log of Real Dividends
