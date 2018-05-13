setwd('C:/Users/guanz/Desktop/JIW2/Week13')
exitdata <- read.csv('MarketExitAll.csv')

exitfit <- glm((IndLossBPMM + SGLossBPMM) ~ IndRTPMM + SGRTPMM + IndRTPMM_2014 + SGRTPMM_2014, data=exitdata)
summary(exitfit)


exitfit <- glm(SGRTPMM ~ SGRTPMM_2015 + SGRTPMM_2014, data=exitdata)
summary(exitfit)


exitfit <- glm(IndRTPMM ~ IndRTPMM_2015 + IndRTPMM_2014, data=exitdata)
summary(exitfit)
