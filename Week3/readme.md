# Week 3

0. (*Pre-pre-processing.*) I created a process to cut out the irrelevant parts of the dataset to create a much smaller, manageable file. This file contains companies that have both member months and risk adjustment values reported. From this file, we can look at 2014-2015 changes as well as 2015-2016 changes.

- This file has been made more easily readable.

- - -

1. (*Rigorous, systematic statistics per state (IWMath.pdf).*) I have created a file to calculate rigorous statistics for all of the states. See RigorousStatsCalculator.ipynb.

2. (*Some hypotheses.*) Are costs correlated with risk adjustment? Is the correlation between member months and the size of transfers per member month (abs(transfers)/MM) ~ sqrt(MM)? What does the histogram of MM in all companies look like?

Weighted, per member month

1. Individual PLRS 2015 and Sum(abs(transfers))/Sum(MM) : 0.0215

2. Individual PLRS 2016 and Sum(abs(transfers))/Sum(MM) : -0.007

3. Individual PLRS 2016-2015 and Sum(abs(transfers))/Sum(MM) : -0.065

4. Small Group PLRS 2015 and Sum(abs(transfers))/Sum(MM) : 0.217

5. Small Group PLRS 2016 and Sum(abs(transfers))/Sum(MM) : 0.219

6. Small Group PLRS 2016-2015 and Sum(abs(transfers))/Sum(MM) : -0.044



3. (*Adjust PLRS correlations with weighted averages.*)

- - - 

### Next steps with 2016 data.

1. (*Preprocessing.*) Scrape 2016 data (I have emailed Jeremie). Use the same script from last semester to create a dataset similar to the one we had last semester. - NOT YET FINISHED

3. (*Evidence of Learning*).

We hypothesize that if a company had a small increase/decrease in risk adjustment in 2014-2015, then the opposite will occur next time, and that the stuff is skewed to the right. We want to look for evidence of learning:

a. correlation between losses in one year and losses in next the less year

b. look at the distribution of changes (expect a small bump to the right, since companies are learning how to play the game)

c. distribution of transfers/mm in 16 minus transfers/mm 15

d. some of the stuff from above as well (see step (2))