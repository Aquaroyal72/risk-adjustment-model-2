setwd('C:/Users/guanz/Desktop/JIW2/Week5/R')
dataset2014ind <- read.csv('2014ind.csv')
dataset2014sg <- read.csv('2014sg.csv')
dataset2015ind <- read.csv('2015ind.csv')
dataset2015sg <- read.csv('2015sg.csv')

#2014 individual
fit2014ind <- lm(Transfers_individual_pmm ~ Premium_individual_pmm + Costs_individual_pmm, data=dataset2014ind, weights=MM_individual)
summary(fit2014ind)

#2014 small group
fit2014sg <- lm(Transfers_smallgroup_pmm ~ Premium_smallgroup_pmm + Costs_smallgroup_pmm, data=dataset2014sg, weights=MM_smallgroup)
summary(fit2014sg)

#2015 individual
fit2015ind <- lm(Transfers_individual_pmm ~ Premium_individual_pmm + Costs_individual_pmm, data=dataset2015ind, weights=MM_individual)
summary(fit2015ind)

#2015 small group
fit2015sg <- lm(Transfers_smallgroup_pmm ~ Premium_smallgroup_pmm + Costs_smallgroup_pmm, data=dataset2015sg, weights=MM_smallgroup)
summary(fit2015sg)

#coefficients
coefficients(fit2014ind) 
coefficients(fit2014sg) 
coefficients(fit2015ind) 
coefficients(fit2015sg) 