setwd('C:/Users/guanz/Desktop/JIW2/Week12')
exitdata <- read.csv('MarketExitAll_week12.csv')

# Our sample is all companies that have above 2000 member months in the 
# individual group in both 2014 and 2015 who have data in 2016. However,
# companies that exited the market in 2016 are excluded in the analysis
# because of missing data.

# RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2015
exitfit <- glm(RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2015, data=exitdata)
summary(exitfit)
coefficients(exitfit)

# RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014
exitfit <- glm(RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014, data=exitdata)
summary(exitfit)
coefficients(exitfit)

# RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014 
#                                   + TotalLossPerMemberMonth2015 + RiskTransfersPerMemberMonth2015
exitfit <- glm(RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014
               + TotalLossPerMemberMonth2015 + RiskTransfersPerMemberMonth2015, data=exitdata)
summary(exitfit)
coefficients(exitfit)

# RiskTransfersPerMemberMonth2015 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014 
exitfit <- glm(RiskTransfersPerMemberMonth2015 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014, data=exitdata)
summary(exitfit)
coefficients(exitfit)

# RiskTransfersPerMemberMonth2016 ~ TotalLossPerMemberMonth2015 + RiskTransfersPerMemberMonth2015
exitfit <- glm(RiskTransfersPerMemberMonth2015 ~ TotalLossPerMemberMonth2014 + RiskTransfersPerMemberMonth2014, data=exitdata)
summary(exitfit)
coefficients(exitfit)