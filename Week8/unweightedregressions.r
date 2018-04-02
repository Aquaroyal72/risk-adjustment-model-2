setwd('C:/Users/guanz/Desktop/JIW2/Week8')
dataset2014 <- read.csv('Data2000MM/2014dataset.csv')
dataset2015 <- read.csv('Data2000MM/2015dataset.csv')
dataset2016 <- read.csv('Data2000MM/2016dataset.csv')

#2014 individual
fit2014ind <- lm(IndRTPMM ~ IndPremiumPMM + IndCostsPMM, data=dataset2014)
summary(fit2014ind)
#2015 individual
fit2015ind <- lm(IndRTPMM ~ IndPremiumPMM + IndCostsPMM, data=dataset2015)
summary(fit2015ind)
#2016 individual
fit2016ind <- lm(IndRTPMM ~ IndPremiumPMM + IndCostsPMM, data=dataset2016)
summary(fit2016ind)


#2014 individual
fit2014ind2 <- lm(IndCostsPMM ~ IndRTPMM + IndPremiumPMM, data=dataset2014)
summary(fit2014ind2)
#2015 individual
fit2015ind2 <- lm(IndCostsPMM ~ IndRTPMM + IndPremiumPMM, data=dataset2015)
summary(fit2015ind2)
#2016 individual
fit2016ind2 <- lm(IndCostsPMM ~ IndRTPMM + IndPremiumPMM, data=dataset2016)
summary(fit2016ind2)