I had some trouble with the merging of the datasets. My procedure was as follows: I imported the dataset. I combined the datasets by year on HIOS ID (since company names may change, as we saw last week). I used a SQL "left" join for this combination to keep keys only from the earlier year (the year that determines if a company leaves). I dropped irrelevant columns. I could not come up with a way to see which companies left programatically, so I did that manually. Then, I matched the column with the risk adjustment, premiums, and costs per member month.

I also did not know what we should define as "exiting the market," so I took it to mean 0 (or unreported) member months.

I deleted companies with incomplete or missing data, or data that caused an error of some sort (such as division by 0). I removed all values of 0 from the dataset. Some companies (<10 total) reported either negative premiums or negative costs. I wonder if these were messing up the correlations from before! I changed these values to positive values by multiplying by -1 (seriously, how do you charge a negative premium?).

From 2014 to 2015, in the individual group,
(all values per member month)
Companies that did exit the market had an average risk adjustment of -20.04  (19 companies reported)
Companies that did not exit the market had an average risk adjustment of 27.75 (436 companies reported)

Companies that did exit the market had an average loss of 170.66 (44 companies reported both premium and costs)
Companies that did not exit the market had an average loss of 86.93 (621 companies reported both premium and costs)


From 2015 to 2016, in the individual group,
Companies that did exit the market had an average risk adjustment of -14.52 (93 companies reported)
Companies that did not exit the market had an average risk adjustment of 20.10 without outliers  (~423 companies reported)

Companies that did exit the market had an average loss of 92.80 (141 companies reported)
Companies that did not exit the market had an average loss of 122.64 with outliers; 43.17 without outliers (~560 companies reported)

In 15-16, I deleted one outlier that had $11,362,466 incurred claims but only 37 member months, and another that had $34,183 incurred claims but only 1 member month.

In 15-16, Celtic Insurance reports >$2000 in costs per member month for for at least 7 states: NH, FL, TX, IL, KS, SC, WY. This is super unreasonable; they alone influence the average loss by around $30. ???


- - - 

Statistics for Input/2014dataset.csv
r for IndPremiumPMM vs IndRTPMM = 0.0132065522776 with n = 455
r for IndCostsPMM vs IndRTPMM = 0.660582099106 with n = 456
r for IndCostsPMM vs IndPremiumPMM = 0.0347097827123 with n = 663
r for IndPremiumMinusCostsPMM vs IndRTPMM = -0.462066797069 with n = 455
r for IndPremiumMinusCostsPMM vs IndPremiumMinusCostsPMM = 1.0 with n = 663


Statistics for Input/2015dataset.csv
r for IndPremiumPMM vs IndRTPMM = 0.506683151559 with n = 520
r for IndCostsPMM vs IndRTPMM = 0.0662970645708 with n = 520
r for IndCostsPMM vs IndPremiumPMM = -0.0496293363477 with n = 696
r for IndPremiumMinusCostsPMM vs IndRTPMM = -0.0528859547977 with n = 520
r for IndPremiumMinusCostsPMM vs IndPremiumMinusCostsPMM = 1.0 with n = 696


Statistics for Input/2016dataset.csv
r for IndPremiumPMM vs IndRTPMM = 0.201956888946 with n = 460
r for IndCostsPMM vs IndRTPMM = 0.396721485964 with n = 458
r for IndCostsPMM vs IndPremiumPMM = 0.107670666914 with n = 590
r for IndPremiumMinusCostsPMM vs IndRTPMM = -0.377404839088 with n = 458
r for IndPremiumMinusCostsPMM vs IndPremiumMinusCostsPMM = 1.0 with n = 590