setwd('C:/Users/guanz/Desktop/JIW2/Week11')
exitdata <- read.csv('MarketExitAll_week11.csv')

exitdata$ExitedMarketIn2016 <- factor(exitdata$ExitedMarketIn2016)

# old tests

exitfit <- glm(ExitedMarketIn2016 ~ TotalPC_2014_Quintile1 + TotalPC_2014_Quintile5,
               data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

exitfit <- glm(ExitedMarketIn2016 ~ TotalPC_2014_Quintile1 + TotalPC_2014_Quintile2
               + TotalPC_2014_Quintile4  + TotalPC_2014_Quintile5 + IndRTPMM_2014,
               data=exitdata, family="binomial")
summary(exitfit)
coefficients(exitfit)

# 4 outcomes:
# 1. log MM 16
# 2. log MM 16 - log MM 14
# 3. transfers 16
# 4. transfers 16 - transfers 14

# 3 dependent variable sets:
# A. total PC 14 + transfers 14
# B. total PC 14 + transfers 14 + reins 14
# C. transfers 14 + reins 14

# new tests

# 1A
exitfit <- glm(LogMM16 ~ TotalPC_2014 + IndRTPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 1B
exitfit <- glm(LogMM16 ~ TotalPC_2014 + IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 1C
exitfit <- glm(LogMM16 ~ IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 2A
exitfit <- glm(LogChangeMM1614 ~ TotalPC_2014 + IndRTPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 2B
exitfit <- glm(LogChangeMM1614 ~ TotalPC_2014 + IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 2C
exitfit <- glm(LogChangeMM1614 ~ IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 3A
exitfit <- glm(Transfers16 ~ TotalPC_2014 + IndRTPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 3B
exitfit <- glm(Transfers16 ~ TotalPC_2014 + IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 3C
exitfit <- glm(Transfers16 ~ IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 4A
exitfit <- glm(ChangeTransfers1614 ~ TotalPC_2014 + IndRTPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 4B
exitfit <- glm(ChangeTransfers1614 ~ TotalPC_2014 + IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)

# 4C
exitfit <- glm(ChangeTransfers1614 ~ IndRTPMM_2014 + IndReinsPMM_2014,
               data=exitdata)
summary(exitfit)
coefficients(exitfit)