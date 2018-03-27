setwd('C:/Users/guanz/Desktop/JIW2/Week5/R')
dataset2016ind <- read.csv('2016ind.csv')
dataset2016sg <- read.csv('2016sg.csv')

#2016 individual
fit2016ind <- lm(Transfers_individual_pmm ~ Premium_individual_pmm + Costs_individual_pmm, data=dataset2016ind, weights=MM_individual)
summary(fit2016ind)

#2016 small group
fit2016sg <- lm(Transfers_smallgroup_pmm ~ Premium_smallgroup_pmm + Costs_smallgroup_pmm, data=dataset2016sg, weights=MM_smallgroup)
summary(fit2016sg)

#2016 individual
fit2016ind2 <- lm(Costs_individual_pmm ~ Transfers_individual_pmm + Premium_individual_pmm, data=dataset2016ind, weights=MM_individual)
summary(fit2016ind2)

#2016 small group
fit2016sg2 <- lm(Costs_smallgroup_pmm ~ Transfers_smallgroup_pmm + Premium_smallgroup_pmm, data=dataset2016sg, weights=MM_smallgroup)
summary(fit2016sg2)


#coefficients
coefficients(fit2016ind) 
coefficients(fit2016sg) 
coefficients(fit2016ind2) 
coefficients(fit2016sg2) 