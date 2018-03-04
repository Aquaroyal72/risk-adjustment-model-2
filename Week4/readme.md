# Week 4

0. (*Descriptive Statistics.*) See visuals.docx for some graphs.

- - -

0a. (*Numerical enrollment by state.*) See numericalenrollment.xlsx for the summed member months per state.

- - -

0b. (*Costs and Premiums PMM by state.*) I calculated the weighted (by member month) average of costs and premiums and (premium - cost) (all per member month) for each state in the individual market for 2014 and 2015 - see costspremiumspmm.xlsx.

- - -

0c. (*Degree of market concentrations by state.*) We can measure this with the Herfindahl Index, which is the square of the percentages of market share. The Herfindahl Index goes from 0 (perfect competition) to 10000 (monopoly).  As expected, Alaska has a very close to monopolistic situation (9000), and Rhode Island is also high (8000), but surprisingly, states like Wyoming have values around 5000, which indicates some competition going on. New York in 2014 in the individual market had probably what we would say is closest to perfect competition, with an index of 945. Massachusetts, Ohio, and California are also pretty low (2000s range). See herfindahlindex.xlsx.

- - -

0d. (*Enrollment dynamics / state.*) I interpreted this as change in member months between 2015 and 2014 for individual and small groups. I noticed that the large majority of small group insurers insured significantly fewer people in 2015 than 2014.

(2015 minus 2014 member months)

| Metric  | Individual | Small Group |
|---------|------------|-------------|
| Average | 715295.3   | -248725     |
| Min     | -83854     | -1511915    |
| Max     | 5576793    | 726564      |
| Std     | 1112826    | 366189.9    |

Were there any policy changes that could have led to this big discrepancy? Did employers stop offering insurance, kicking people into the individual market?

- - -

0e. (*Distribution of profit margins, net profits per state.*) 

All values are per member month. All values were from the individual market.

P = premium; C = costs; P-C = premium - costs = profit

| State   | P14      | C14      | P-C14    | P15      | C15      | P-C15    |
|---------|----------|----------|----------|----------|----------|----------|
| Average | 309.6648 | 327.9022 | -18.1644 | 343.5598 | 384.7879 | -41.228  |
| Min     | 183.2001 | 182.6566 | -139.073 | 218.1188 | 297.9602 | -241.941 |
| Max     | 449.4875 | 567.6226 | 81.59678 | 562.1426 | 804.0833 | 66.93816 |
| Std     | 57.94537 | 66.16271 | 43.75728 | 59.94996 | 82.49096 | 55.21699 |

On average, in the individual group for both 2014 and 2015, costs are higher than premiums (and this is higher in 2015 than 2014). Does this make sense? Is it related to the fact that on average, insurers insured more people through the individual market?

The unweighted correlation between 2015-2014 profits pmm and 2015-2014 change in mm is 0.12. I thought they would have been more correlated. My calculator for weighted stats can take in one column of this form (statewide metrics), but not two.  I should add that feature.

- - -

1. (*Documenting work from week 3.*) - Done.