# Week 3

Summarizing the next steps:

1. Preprocessing. Scrape 2016 data (I have emailed Jeremie). Use the same script from last semester to create a dataset similar to the one we had last semester.

*2. Rigorous statistics* (see: IWMath.pdf). Last week, I created a process to cut out the irrelevant parts of the dataset to create a much smaller, manageable file. This file contains companies that have both member months and risk adjustment values reported. From this file, we can look at 2014-2015 changes as well as 2015-2016 changes.

We hypothesize that if a company had a small increase/decrease in risk adjustment in 2014-2015, then the opposite will occur next time, and that the stuff is skewed to the right. We want to look for evidence of learning:

a. correlation - lose $ one year, lose next the less year

b. look at the distribution of changes (expect a small bump to the right, since companies are learning how to play the game)

c. this is based on the assumption that costs are correlated with risk adjustment - need to check this

d. revisit stuff from last week - in markets (large states) where transfers are a big deal, people will push for a higher PLRS.

*3. Analysis. *

a. correlation between member months and size of transfers PMM (absolute transfers/mm) ~sqrt(MM)

b. distribution of transfers/mm in 16 minus transfers/mm 15

c. systematic statistics per state

d. histogram of MM (total) and in big v. small companies