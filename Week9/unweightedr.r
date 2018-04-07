setwd('C:/Users/guanz/Desktop/JIW2/Week9')
exitdata <- read.csv('MarketExitAll_filtered.csv')

#exiting market vs. loss in previous two years
exitfit <- lm(ExitedMarketIn2016 ~ IndPremiumMinusCostsPMM_2014 + IndPremiumMinusCostsPMM_2015, data=exitdata)
summary(exitfit)
coefficients(exitfit)

#introduce transfers
exitfit2 <- lm(ExitedMarketIn2016 ~ IndPremiumMinusCostsPMM_2014 + IndPremiumMinusCostsPMM_2015
               + IndRTPMM_2014 + IndRTPMM_2015, data=exitdata)
summary(exitfit2)
coefficients(exitfit2)

#only transfers
exitfit3 <- lm(ExitedMarketIn2016 ~ IndRTPMM_2014 + IndRTPMM_2015, data=exitdata)
summary(exitfit3)
coefficients(exitfit3)

# sanity check
exitfit4 <- lm(IndPremiumPMM_2015 ~ IndCostsPMM_2015 + IndRTPMM_2015, data=exitdata)
summary(exitfit4)
coefficients(exitfit4)