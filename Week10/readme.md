Define (all per member month):

- TotalP_a = Premiums - Costs

- TotalP_b = Premiums - Costs + Transfers

- TotalP_c = Premiums - Costs + Transfers + Reinsurance 

- TotalP_d = Premiums - Costs + Transfers + Risk Corridors

- TotalP_e = Premiums - Costs + Transfers + Reinsurance + Risk Corridors

Excel code to classify quintiles (i.e. from 0 to 4 based on what quintile the value was in): 

~~~~IF(O2<PERCENTILE.EXC(O$2:O$378, 0.2), 0, IF(O2<PERCENTILE.EXC(O$2:O$378, 0.4), 1, IF(O2<PERCENTILE.EXC(O$2:O$378, 0.6), 2, IF(O2<PERCENTILE.EXC(O$2:O$378, 0.8), 3, 4 ))))~~~~

If there was a missing value in Excel, this formula would report 2. Is that inaccurate? Should we be doing something else instead?

Because so few companies reported Risk Corridors (n=35), TotalP_d and TotalP_e did not have significant intercept values. However, TotalP_c (premiums-costs+transfers+reinsurance) had the most significant values for coefficients as well as the lowest AIC (r^2 for logistic stuff). In addition, TotalP_c_quintile was the only significant coefficient in all of the quintile analyses. Since the quintile analyses are not significant for TotalP_a and TotalP_b, does that mean that the significant coefficients found are not actually significant?

I specifically want to point out the comparison between these two quintile datas: TotalP_b (Premium - Cost + Transfers, or what we were looking at before), and TotalP_c (adding on reinsurance). The values themselves are quite similar (Exited Market ~ -0.7 -0.2 Quintile_2014 + 0.06 Quintile_2015). While the p value is not statistically significant in TotalPB 2014, I think that it is substantively significant in that it is different from the 2015 value.
