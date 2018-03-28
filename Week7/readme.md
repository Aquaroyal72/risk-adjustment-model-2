Message for a future me, who is probably smarter than current me: SAVE YOUR WORK AS AN XLSX, NOT A CSV, SINCE CSV DOES NOT SAVE SHEETS AND THERE IS NO WAY TO RECOVER THEM!!!!!

- - -

(*Losses*) I had some trouble with the merging of the datasets. My procedure was as follows: I imported the dataset. I combined the datasets by year on HIOS ID (since company names may change, as we saw last week). I used a SQL "left" join for this combination to keep keys only from the earlier year (the year that determines if a company leaves). I dropped irrelevant columns. I could not come up with a way to see which companies left programatically, so I did that manually. Then, I matched the column with the risk adjustment, premiums, and costs per member month.

I also did not know what we should define as "exiting the market," so I took it to mean 0 (or unreported) member months.

I deleted companies with incomplete or missing data, or data that caused an error of some sort (such as division by 0). I removed all values of 0 from the dataset. Some companies (<10 total) reported either negative premiums or negative costs. I wonder if these were messing up the correlations from before! I changed these values to positive values by multiplying by -1 (seriously, how do you charge a negative premium?).

From 2014 to 2015, in the individual group, (all values per member month)

- Companies that did exit the market had an average risk adjustment of -20.04  (19 companies reported)
- Companies that did not exit the market had an average risk adjustment of 27.75 (436 companies reported)
- Companies that did exit the market had an average loss of 170.66 (44 companies reported both premium and costs)
- Companies that did not exit the market had an average loss of 86.93 (621 companies reported both premium and costs)


From 2015 to 2016, in the individual group,

- Companies that did exit the market had an average risk adjustment of -14.52 (93 companies reported)
- Companies that did not exit the market had an average risk adjustment of 20.10 without outliers  (~423 companies reported)
- Companies that did exit the market had an average loss of 92.80 (141 companies reported)
- Companies that did not exit the market had an average loss of 122.64 with outliers; 43.17 without outliers (~560 companies reported)

Removing outliers: First, I sorted Premiums and Costs PMM from low to high. For the low values, I checked if any of them were negative. If they were negative, and the negation of that negative value seemed plausible, then I multiplied by negative 1. (This was the case for all negative values, so I think that whoever filled out the form just didn't know what to put). For values above $2000 (10x the mean), I did a sanity check. Are the premiums per member month also extremely high to balance it out (indication that the premiums and costs data is accurate, but the member months may be too low)? Or is there a huge difference (misreporting in either premiums, costs, or member months)? Are the premiums/costs significantly larger than the member months? In 15-16, I deleted one outlier that had $11,362,466 incurred claims but only 37 member months, and another that had $34,183 incurred claims but only 1 member month. In 15-16, Celtic Insurance reports >$2000 in costs per member month for for at least 7 states: NH, FL, TX, IL, KS, SC, WY. This is super unreasonable; they alone influence the average loss by around $30. ???


- - - 

Statistics for Input/2014dataset.csv

- r for IndPremiumPMM vs IndRTPMM = 0.0132065522776 with n = 455
- r for IndCostsPMM vs IndRTPMM = 0.660582099106 with n = 456
- r for IndCostsPMM vs IndPremiumPMM = 0.0347097827123 with n = 663
- r for IndPremiumMinusCostsPMM vs IndRTPMM = -0.462066797069 with n = 455
- r for IndPremiumMinusCostsPMM vs IndPremiumMinusCostsPMM = 1.0 with n = 663


Statistics for Input/2015dataset.csv

- r for IndPremiumPMM vs IndRTPMM = 0.506683151559 with n = 520
- r for IndCostsPMM vs IndRTPMM = 0.0662970645708 with n = 520
- r for IndCostsPMM vs IndPremiumPMM = -0.0496293363477 with n = 696
- r for IndPremiumMinusCostsPMM vs IndRTPMM = -0.0528859547977 with n = 520
- r for IndPremiumMinusCostsPMM vs IndPremiumMinusCostsPMM = 1.0 with n = 696


Statistics for Input/2016dataset.csv

- r for IndPremiumPMM vs IndRTPMM = 0.201956888946 with n = 460
- r for IndCostsPMM vs IndRTPMM = 0.396721485964 with n = 458
- r for IndCostsPMM vs IndPremiumPMM = 0.107670666914 with n = 590
- r for IndPremiumMinusCostsPMM vs IndRTPMM = -0.377404839088 with n = 458
- r for IndPremiumMinusCostsPMM vs IndPremiumMinusCostsPMM = 1.0 with n = 590

- - -

(*Celtic*)

Celtic's Breakdown in 2015 across the states which they operated in: Looks like some serious under-reporting of member months to me. 

Based on the NH report, Celtic Ambetter had 18813 enrollees in March, which is the month that the data was reported in - did they neglect to include their sub-programs in their report?

| HIOS ID | Name                     | State | Risk Adj | MM     | Premium  | Costs    | 2015 RA PMM | 2015 Premium PMM | 2015 Cost PMM |
|---------|--------------------------|-------|----------|--------|----------|----------|-------------|------------------|---------------|
| 62141   | Celtic Insurance Company | AR    | -1.1E+07 | 511698 | 1.79E+08 | 1.92E+08 | -21.2883    | 349.3344         | 374.4909      |
| 21663   | Celtic Insurance Company | FL    | 193747.7 | 111    | 196528.3 | 635771.1 | 1745.475    | 1770.525         | 5727.668      |
| 24775   | Celtic Insurance Company | GA    | 1983.9   | 18     | 15253.3  | 17190.8  | 110.2167    | 847.4056         | 955.0446      |
| 27833   | Celtic Insurance Company | IL    | -76.03   | 24     | 31253.3  | 60705.38 | -3.16792    | 1302.221         | 2529.391      |
| 76179   | Celtic Insurance Company | IN    | -8090.12 | 158525 | 62672129 | 41910124 | -0.05103    | 395.3454         | 264.3755      |
| 34368   | Celtic Insurance Company | KS    | 4300.78  | 36     | 26610.16 | 80378.08 | 119.4661    | 739.1711         | 2232.724      |
| 99723   | Celtic Insurance Company | MO    | -4529.5  | 24     | 7499.47  | 14294.53 | -188.729    | 312.4779         | 595.6056      |
| 44007   | Celtic Insurance Company | NC    | 8222.85  | 15     | 15074.32 | 18276.07 | 548.19      | 1004.955         | 1218.405      |
| 75841   | Celtic Insurance Company | NH    | 110166   | 18     | 73380.16 | 193944.8 | 6120.333    | 4076.676         | 10774.71      |
| 68307   | Celtic Insurance Company | NV    | -10494.2 | 93     | 26179.03 | 81052.54 | -112.84     | 281.4949         | 871.5327      |
| 62352   | Celtic Insurance Company | OH    | -11014.4 | 36     | 16829.38 | 20911.53 | -305.954    | 467.4828         | 580.876       |
| 62505   | Celtic Insurance Company | OK    | -5294.26 | 24     | 6046.396 | 39685.41 | -220.594    | 251.9332         | 1653.559      |
| 10842   | Celtic Insurance Company | PA    | -2443.12 | 9      | 1358.93  | 15054.8  | -271.458    | 150.9922         | 1672.756      |
| 60067   | Celtic Insurance Company | SC    | -15341.2 | 36     | 17933.28 | 161955.3 | -426.145    | 498.1467         | 4498.759      |
| 29418   | Celtic Insurance Company | TX    | 6632.38  | 39     | 52201.84 | 121937.2 | 170.061     | 1338.509         | 3126.596      |
| 49290   | Celtic Insurance Company | WY    | -7210.87 | 12     | 679.22   | 24030.8  | -600.906    | 56.60167         | 2002.567      |