(1) Does losing money cause plans to drop out the next year? Do negative transfers make them drop out?

Among companies reporting premiums, costs, and transfers... the market is relatively stable. I took the same data from before, where the "leading year" had MM > 2000. I have the same problem as not knowing how to define "exiting the market". I defined "exiting the market" as not reporting risk transfers in the following year, not reporting MM the following year, or having MM < 2000 the following year.

For 2014 -> 2015:

(Avg Premium, Avg Costs, Avg Transfers, Avg Premium - Costs)

379 companies reported all 3 things and stayed in the market
314.7151	368.8403	15.85123	-53.3714

6 companies reported all 3 things and exited the market
317.9302	379.6681	47.73126	-61.7378

Can't infer much from a 6 company sample size, but it looks like most of the companies we saw exit last time were small ones that got filtered out. 

2015 -> 2016

362 companies reported all 3 things and stayed in the market
347.8353	389.4214	7.409636	-41.5861

70 companies reported all 3 things and exited the market (lost less than avg, weird)
336.5158	408.7012	1.095228	-72.1854

Lower premiums, higher costs, more loss. Not sure about the transfers, especially due to the small sample size.


(2) Same q, but instead of dropping out consider changes in MMs (need to be careful since we drop off outliers in terms of MMs). 
(3) Same q, but instead of dropping out consider changes in premiums per MM. 

Define "in the market" as having >2000MM and reported premiums, costs, and transfers. Everything is per member month, in the individual group.

First, I removed all companies that were not "in the market" for 2014 and 2015.

Next, let E = Exiting the Market in 2016 (a variable that is 1 if the company exits the market in 2016 and 0 if the company stays in the market in 2016).

Then, I used R for the regressions for:
(1) E = a + b * Loss 2014 + c * Loss 2015 

and

(2) E = v + w * Loss 2014 + x * Loss 2015 + y * Transfers 2014 + z * Transfers 2015

These were not significant.

(1) E = 0.2126912337 + -0.0004518635 * Loss 2014 + 0.0001109787 * Loss 2015

(r^2 = 0.01002)

(2) E =  2.098441e-01  +  -6.535316e-04 * Loss 2014 +  1.187861e-05 * Loss 2015 +  -7.682637e-04 * Transfers 2014 + - 7.408259e-05 * Transfers 2015 

(r^2 = 0.01475)

---

For additional reference, I tried:

(3) E = m + n * Transfers 2014 + p * Transfers 2015
(3) E = 2.321228e-01 + 1.125455e-04 * Transfers 2014 + -8.901111e-05 * Transfers 2015

(r^2 = -0.005141)

---

(Lack of) Correlations between:

1. Losing Money in 2014 and changes in MM in 2015 - 2014.
r for IndPremiumMinusCostsPMM_2014 vs MMChange1514 = 0.000132191159748 with n = 377

2. Losing Money in 2014 and changes in MM in 2016 - 2015. 
r for IndPremiumMinusCostsPMM_2014 vs MMChange1615 = 0.0388734080478 with n = 306

3. Losing Money in 2015 and changes in MM in 2016 - 2015.
r for IndPremiumMinusCostsPMM_2015 vs MMChange1615 = 0.085465752061 with n = 306

4. Losing Money in 2014 and changes in premium in 2015 - 2014.
r for IndPremiumMinusCostsPMM_2014 vs PremChange1514 = -0.005517438097 with n = 377

5. Losing Money in 2014 and changes in premium  in 2016 - 2015. 
r for IndPremiumMinusCostsPMM_2014 vs PremChange1615 = 0.0367182585727 with n = 306

6. Losing Money in 2015 and changes in premium  in 2016 - 2015. 
r for IndPremiumMinusCostsPMM_2015 vs PremChange1615 = -0.0755416628253 with n = 306

It does not particularly look like companies are actively changing anything in response to losing money.
