
Without removing outliers

| TotalPC Quintile in 2014 | Bottom | 2 | 3 | 4 | Top |
|------------------------------|---------|--------|-------|-------|-------|
| n exited the market | 24 | 19 | 17 | 11 | 16 |
| n in quinitle | 75 | 76 | 76 | 75 | 75 |
| proportion exited the market | 0.32 | 0.25 | 0.224 | 0.147 | 0.213 |
| upper cutoff for quintile | -119.86 | -47.83 | -7.40 | 41.22 |  |

With removing outliers (specifically, Assurant Inc., which includes Time Insurance Company and John Alden Life Insurance Company; and Aetna and Humana as the buyout of Humana failed, so I'm not sure what eventually happened...)

| TotalPC Quintile in 2014 | Bottom | 2 | 3 | 4 | Top |
|------------------------------|---------|--------|-------|-------|-------|
| n exited the market | 15 | 8 | 4 | 2 | 2 |
| n in quinitle | 75 | 76 | 76 | 75 | 75 |
| proportion exited the market | 0.2 | 0.11 | 0.53 | 0.026 | 0.026 |
| upper cutoff for quintile | -119.86 | -47.83 | -7.40 | 41.22 |  |

First, I looked at exit rates: what fraction of each quintile exits the market, based on quintiles of TotalPC = Premiums - Costs + Transfers + Reinsurance (all per member month). I am personally confused why so many companies in the top quintile in 2014 did exit the market. It looks like some companies (specifically Time Insurance Company and John Alden Life Insurance Company) have something larger going on. Indeed, John Alden and Time are subsidiaries of Assurant, and are outliers. From Wikipedia, "On June 10, 2015 Assurant announced an exit from the health insurance marketplace to focus on housing and lifestyle specialty protection products and services, and would be winding down its Assurant Health business." Further, from Wikipedia, "The health insurer Aetna said on July 3, 2015, that it had agreed to acquire its smaller rival Humana for $37 billion in cash and stock[8] but walked away from the deal after a court ruling that the merger would be anti-competitive.[9]" I think something happened with Aetna and Humana, but I'm not sure what, so I removed them from the analysis as well.

In the top quintile, these are the companies that exited:

- Aetna Life Insurance Company	(DC, AK, OK)

- Health First Insurance, Inc.	FL

- Humana Insurance Company	(OK, IL)

- John Alden Life Insurance Company	(NC, MN)

- McLaren Health Plan	MI

- Time Insurance Company	(WY, DE, ND, ID, IA, IL, WV)

In the second quintile, these are the companies that exited:

- Aetna Life Insurance Company	AZ

- Peach State Health Plan	GA

- Sunshine State Health Plan	FL

- Time Insurance Company	(VA, KS, NM, OH, TN, UT, MI, LA)

In the third quintile, these are the companies that exited:

- Aetna Life Insurance Company	(NY, NC)

- Coventry Health and Life	OK

- Coventry Health Plan of Florida, Inc.	FL

- Health America Pennsylvania, Inc.	PA

- Superior Health Plan	TX

- Time Insurance Company	(AL, CO, CT, WI, PA, MS, MT, OK, MO, NE, MN)

In the fourth quintile, these are the companies that exited:

- Coventry Health and Life	MS

- Coventry Health Care of the Carolinas, Inc.	(NC, SC)

- Freedom Life Insurance	SC

- Health Plus Insurance Company	MI

- HealthPartners, Inc.	MN

- Humana Insurance Company	OH

- Moda Health Plan, Inc.	WA

- Preferred Medical Plan, Inc.	FL

- Time Insurance Company	(NH, KY, IN, SD, TX, WA, OR, GA, NC, PA)

In the bottom quintile, these are the companies that exited:

- Arches Mutual Insurance Company	UT

- Bridge Span Health Company	UT

- Colorado Health Insurance Cooperative, Inc.	CO

- Community Health Plan of Washington	WA

- Consumers' Choice Health Insurance Company	SC

- Consumers Mutual Insurance of Michigan	MI

- CoOportunity Health	(IA, NE)

- Freelancers Health Service Corporation d/b/a Health Republic I f N Y k	NY

- Health Plus of Michigan	MI

- Humana Insurance Company	NV

- Kentucky Health Cooperative	KY

- Louisiana Health Cooperative, Inc.	LA

- Meritus Health Partners	AZ

- Meritus Mutual Health Partners	AZ

- Nevada Health CO-OP	NV

- Time Insurance Company	(NV, CA, AZ, AR, FL, SC, AK)

- WINhealth Partners	WY

- - -

I re-did some old correlations. Recall that ExitedMarketIn2016 is 1 if the company exits the market in 2016, and 0 otherwise. By removing the outliers (Time, John Alden), we gained a little more power. 

ExitedMarketIn2016 ~ -2.0462893 + 0.9876824  (p value 0.005) TotalPC_2014_Quintile1  + -0.9982331 (p value 0.11) TotalPC_2014_Quintile5

Interpretation: if you are in the bottom 20%, then you are likely to exit the market (ExitedMarketIn2016 ~ -1.053). If you are in the top 20%, you are very unlikely to exit the market (ExitedMarketIn2016 ~ -3.038). However, I don't understand why ExitedMarketIn2016 can be negative as it is defined to be either 0 or 1.

- - -

Finally, new calculations (attached)
I calculated change in member months 16 - 14 by log(MM in 16) - log(MM in 14). I don't think this is right. Logs can't take negative numbers, so I was wondering how to do something like log(MM16-MM14) when MM16-MM14 is negative. 

I looked at 4 outcomes:

1. log MM 16

2. log MM 16 - log MM 14 (should probably be changed, as none of these correlations were significant)

3. transfers 16

4. transfers 16 - transfers 14

and 3 dependent variable sets:
A. total PC 14 + transfers 14

B. total PC 14 + transfers 14 + reins 14

C. transfers 14 + reins 14

recall that total PC 14 = premiums + transfers + reinsurance - costs

From all of these, it looks like reinsurance isn't really correlated with anything, but TotalPC14 and Transfers in 14 are correlated (TotalPC14 more so than Transfers in 14).