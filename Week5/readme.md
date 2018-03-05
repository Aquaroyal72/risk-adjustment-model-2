# Week 5

0. (*Rigorous, systematic statistics per state (IWMath.pdf).*) I will create datasets containing member months for individual group and small group for 2014 and 2015. I want to make the calculator faster.

The calculator is used in two ways: weighting states by their state total member months / national total member months, and weighting companies within states by their member months / state total member months. I need to draw a distinction between the two.

- - -

1. (*Linear Regression.*) We want to fit data to the following model, weighted by member months: Transfers ~ a*Premium + b*Costs. We have the following results:

_> coefficients(fit2014ind)_

| Data             | Intercept     | Premium_individual_pmm | Costs_individual_pmm |
|------------------|---------------|------------------------|----------------------|
| 2014 Individual  | -48.5027115   | -0.1136346             | 0.2571754            |
| 2014 Small Group | -19.146314623 | 0.008714121            | 0.050871943          |
| 2015 Individual  | -105.69707295 | 0.21768458             | 0.08534201           |
| 2015 Small Group | -30.43089364  | 0.02919026             | 0.05663834           |

The 2015 Individual and 2015 Small Group markets had high standard error (>0.01) in their premium and cost coefficients. The 2014 data was fine.

- - -

2. (*For-profit status.*) We want to see if for-profit status affects correlations.

| 2014 for-profit | 2014 non-profit | 2015 for-profit | 2015 non-profit | metrics                   |
|-----------------|-----------------|-----------------|-----------------|---------------------------|
| 0.198           | 0.185           | 0.221           | 0.441           | premium vs. risk transfer |
| 0.264           | 0.518           | 0.501           | 0.410           | cost vs. risk transfer    |
| 0.571           | 0.554           | 0.399           | 0.365           | cost vs. premium          |
| -0.113          | -0.502          | -0.352          | -0.313          | profits vs. risk transfer |

- - -

3. (*Actuarial Value correlations.*) Similar to PLRS correlations from last time, see if Actuarial Value is correlated with transfers.

| risk transfers vs. | 2015 r, raw value of transfers | r, absolute value of transfers |
|--------------------|--------------------------------|--------------------------------|
| PLRS               | 0.0285                         | 0.0019                         |
| AV                 | 0.1845                         | -0.0031                        |
| ARF                | -0.1269                        | 0.0058                         |
| IDF                | 0.0996                         | 0.0024                         |


It's not correlated; neither are the rest of the measurements used to calculate transfers. This should be expected.

- - -

4. (*Distribution of correlations of Premiums/Costs/Transfers per state*). We want to see how correlations of the following are distributed per state:

premiums vs. costs

premiums vs. transfers

costs vs. transfers