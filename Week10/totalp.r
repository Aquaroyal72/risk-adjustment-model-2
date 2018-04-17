setwd('C:/Users/guanz/Desktop/JIW2/Week10')
exitdata <- read.csv('MarketExitAll_week10_final.csv')

exitdata$ExitedMarketIn2016 <- factor(exitdata$ExitedMarketIn2016)

#exiting market vs. loss in previous two years
exitfit <- glm(ExitedMarketIn2016 ~ TotalPA_2014 + TotalPA_2015, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPB_2014 + TotalPB_2015, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPC_2014 + TotalPC_2015, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPD_2014 + TotalPD_2015, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPE_2014 + TotalPE_2015, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPA_2014_Quintile + TotalPA_2015_Quintile, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPB_2014_Quintile + TotalPB_2015_Quintile, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPC_2014_Quintile + TotalPC_2015_Quintile, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPD_2014_Quintile + TotalPD_2015_Quintile, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPE_2014_Quintile + TotalPE_2015_Quintile, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)