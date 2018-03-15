# Week 6

New 2016 PLRS data = new analyses!

- - - 

Statistics for Output/2014dataset.csv

For profit

IndPremiumPMM vs IndRTPMM in ALL
r: 0.198116013727

IndCostsPMM vs IndRTPMM in ALL
r: 0.263758583715

IndCostsPMM vs IndPremiumPMM in ALL
r: 0.571383709569

IndPremiumMinusCostsPMM vs IndRTPMM in ALL
r: -0.113468080951

Non profit

IndPremiumPMM vs IndRTPMM in ALL
r: 0.184622139508

IndCostsPMM vs IndRTPMM in ALL
r: 0.518360351743

IndCostsPMM vs IndPremiumPMM in ALL
r: 0.554277157824

IndPremiumMinusCostsPMM vs IndRTPMM in ALL
r: -0.502187253338

Statistics for Output/2015dataset.csv

For profit

IndPremiumPMM vs IndRTPMM in ALL
r: 0.220533457377

IndCostsPMM vs IndRTPMM in ALL
r: 0.50144135372

IndCostsPMM vs IndPremiumPMM in ALL
r: 0.398871094373

IndPremiumMinusCostsPMM vs IndRTPMM in ALL
r: -0.352115872961

Non profit

IndPremiumPMM vs IndRTPMM in ALL
r: 0.441218542245

IndCostsPMM vs IndRTPMM in ALL
r: 0.410054020912

IndCostsPMM vs IndPremiumPMM in ALL
r: 0.365309539255

IndPremiumMinusCostsPMM vs IndRTPMM in ALL
r: -0.313207273402

Statistics for Output/2016dataset.csv

For profit

IndPremiumPMM vs IndRTPMM in ALL
r: 0.365796696854

IndCostsPMM vs IndRTPMM in ALL
r: 0.656688921963

IndCostsPMM vs IndPremiumPMM in ALL
r: 0.720008846327

IndPremiumMinusCostsPMM vs IndRTPMM in ALL
r: -0.589652623865

Non profit

IndPremiumPMM vs IndRTPMM in ALL
r: 0.479127458924

IndCostsPMM vs IndRTPMM in ALL
r: 0.792209462256

IndCostsPMM vs IndPremiumPMM in ALL
r: 0.704878749257

IndPremiumMinusCostsPMM vs IndRTPMM in ALL
r: -0.767634174471


Separately of that, I was looking for evidence of learning. If a company loses in one year, then they are expected to not lose the next year (whereas if they win in one year, they should continue winning). In the individual group, correlation between loss 16 - 15 and loss 15 - 14 is -0.844. To remove the situation where a company wins one year and then loses the next, I have filtered the results to when loss 15-14 is >0 and <0. 

Correct me if I am misinterpreting these statistics, but
Loss 2015 > Loss 2014 has r = -0.87188. If you lose more in 2015 than 2014, then the opposite happens next year since r is negative: Loss 2016 < Loss 2015. There were 255 companies for which this was the case.
Loss 2015 < Loss 2014 has r = 0.49434. If you lose less in 2015 than 2014, then the same thing happens next year since r is positive: Loss 2016 < Loss 2015. There were 228 companies for which this was the case.
There were only 483 companies that had reported individual group data for all 3 years. 483 = 228 + 255, so no company had 0 diff's.

IndLossPMM_2016 vs IndLossPMM_2015 in ALL
r: -0.0263501719999
n = 552

IndLossPMM_2016 vs IndLossPMM_2014 in ALL
r: 0.0294412436731
n = 485

IndLossPMM_2015 vs IndLossPMM_2014 in ALL
r: 0.619989790882
n = 617

DeltaLoss1615 vs DeltaLoss1514 in ALL
r: -0.844564529019
n = 483

DeltaLoss1615 vs DeltaLoss1514 in Costs Minus Premiums 15-14 > 0 
r: -0.871881237167
n = 255

DeltaLoss1615 vs DeltaLoss1514 in Costs Minus Premiums 15-14 < 0  
r: 0.494340053668
n = 228