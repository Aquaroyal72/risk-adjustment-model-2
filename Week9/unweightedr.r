setwd('C:/Users/guanz/Desktop/JIW2/Week9')
exitdata <- read.csv('Data/MarketExitAll_filtered4.csv')

exitdata$ExitedMarketIn2016 <- factor(exitdata$ExitedMarketIn2016)

#exiting market vs. loss in previous two years
exitfit <- glm(ExitedMarketIn2016 ~ TotalPb2014 + TotalPb2015, data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

#introduce transfers
exitfit2 <- glm(ExitedMarketIn2016 ~ IndPremiumMinusCostsPMM_2014 + IndPremiumMinusCostsPMM_2015
               + IndRTPMM_2014 + IndRTPMM_2015, data=exitdata, family="binomial")
summary(exitfit2)
coefficients(exitfit2)

#only transfers
exitfit3 <- glm(ExitedMarketIn2016 ~ IndRTPMM_2014 + IndRTPMM_2015, data=exitdata, family="binomial")
summary(exitfit3)
coefficients(exitfit3)

# sanity check
exitfit4 <- glm(ExitedMarketIn2016 ~ IndCostsPMM_2015 + IndPremiumPMM_2015, data=exitdata, family="binomial")
summary(exitfit4)
coefficients(exitfit4)

# sanity check
exitfit4 <- glm(ExitedMarketIn2016 ~ IndCostsPMM_2014 + IndPremiumPMM_2014, data=exitdata, family="binomial")
summary(exitfit4)
coefficients(exitfit4)

# sanity check
exitfit4 <- glm(ExitedMarketIn2016 ~ IndCostsPMM_2014 + IndPremiumPMM_2014 + IndCostsPMM_2014 + IndPremiumPMM_2015
                + IndPremiumMinusCostsPMM_2014 + IndPremiumMinusCostsPMM_2015
                + IndRTPMM_2014 + IndRTPMM_2015,
                data=exitdata, family="binomial")
summary(exitfit4)
coefficients(exitfit4)

# sanity check
exitfit4 <- glm(ExitedMarketIn2016 ~ IndCostsPMM_2014 + IndPremiumPMM_2014 + IndCostsPMM_2014 + IndPremiumPMM_2015
                + IndRTPMM_2014 + IndRTPMM_2015,
                data=exitdata, family="binomial")
summary(exitfit4)
coefficients(exitfit4)

# sanity check
exitfit4 <- glm(ExitedMarketIn2016 ~ IndCostsPMM_2014 + IndPremiumPMM_2014 + IndCostsPMM_2014 + IndPremiumPMM_2015
                + IndRTPMM_2014 + IndRTPMM_2015 + log(X7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3.31.15_2015/X7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3.31.15_2014),
                data=exitdata, family="binomial")
summary(exitfit4)
coefficients(exitfit4)

# sanity check
exitfit4 <- glm(ExitedMarketIn2016 ~ IndCostsPMM_2014 + log(IndPremiumPMM_2015/IndPremiumPMM_2014) + IndCostsPMM_2014
                + IndRTPMM_2014 + IndRTPMM_2015 + log(X7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3.31.15_2015/X7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3.31.15_2014),
                data=exitdata, family="binomial")
summary(exitfit4)
coefficients(exitfit4)