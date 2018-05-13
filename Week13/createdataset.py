import pandas as pd
import numpy as np
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)

data2014 = pd.read_csv("../Week7/Input/2014dataset.csv",low_memory=False)
data2015 = pd.read_csv("../Week7/Input/2015dataset.csv",low_memory=False)
data2016 = pd.read_csv("../Week7/Input/2016dataset.csv",low_memory=False)

mm_cutoff = 2000

important_fields_ind = ["HIOS ID", 
"HIOS INPUTTED INSURANCE COMPANY NAME", 
"STATE", 
"REINSURANCE PAYMENT AMOUNT (OR NOT ELIGIBLE)",
"HHS RISK ADJUSTMENT TRANSFER AMOUNT (INDIVIDUAL MARKET, INCLUDING CATASTROPHIC)",
"Not-For-Profit:",
"7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15",
"1.1Directpremiumwritten2HealthInsuranceINDIVIDUALTotalasof3/31/15",
"2.16Totalincurredclaims2HealthInsuranceINDIVIDUALTotalasof3/31/15",]
					
important_fields_sg = ["HIOS ID",
"HIOS INPUTTED INSURANCE COMPANY NAME",
"STATE",
"Not-For-Profit:",
"HHS RISK ADJUSTMENT TRANSFERS AMOUNT (SMALL GROUP MARKET)", 
"7.4Membermonths7HealthInsuranceSMALLGROUPTotalasof3/31/15", 
"1.1Directpremiumwritten7HealthInsuranceSMALLGROUPTotalasof3/31/15",
"2.16Totalincurredclaims7HealthInsuranceSMALLGROUPTotalasof3/31/15"]

data2014_ind = data2014[important_fields_ind].dropna(how='all')
data2015_ind = data2015[important_fields_ind].dropna(how='all')
data2016_ind = data2016[important_fields_ind].dropna(how='all')

data2014_sg = data2014[important_fields_sg].dropna(how='all')
data2015_sg = data2015[important_fields_sg].dropna(how='all')
data2016_sg = data2016[important_fields_sg].dropna(how='all')

def add_columns_ind(playground1):
    playground1["IndPremiumPMM"] = playground1["1.1Directpremiumwritten2HealthInsuranceINDIVIDUALTotalasof3/31/15"] / playground1["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15"]
    playground1["IndCostsPMM"] = playground1["2.16Totalincurredclaims2HealthInsuranceINDIVIDUALTotalasof3/31/15"] / playground1["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15"]
    playground1["IndRTPMM"] = playground1["HHS RISK ADJUSTMENT TRANSFER AMOUNT (INDIVIDUAL MARKET, INCLUDING CATASTROPHIC)"] / playground1["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15"]
	playground1["IndReinsPMM"] = playground1["REINSURANCE PAYMENT AMOUNT (OR NOT ELIGIBLE)"] / playground1["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15"]
    playground1["IndLossAPMM"] = playground1["IndPremiumPMM"] - playground1["IndCostsPMM"]
    playground1["IndLossBPMM"] = playground1["IndLossAPMM"] + playground1["IndRTPMM"]
    playground1["IndLossCPMM"] = playground1["IndLossBPMM"] + playground1["IndReinsPMM"]
	
def add_columns_sg(playground1):
    playground1["SGPremiumPMM"] = playground1["1.1Directpremiumwritten7HealthInsuranceSMALLGROUPTotalasof3/31/15"] / playground1["7.4Membermonths7HealthInsuranceSMALLGROUPTotalasof3/31/15"]
    playground1["SGCostsPMM"] = playground1["2.16Totalincurredclaims7HealthInsuranceSMALLGROUPTotalasof3/31/15"] / playground1["7.4Membermonths7HealthInsuranceSMALLGROUPTotalasof3/31/15"]
    playground1["SGRTPMM"] = playground1["HHS RISK ADJUSTMENT TRANSFERS AMOUNT (SMALL GROUP MARKET)"] / playground1["7.4Membermonths7HealthInsuranceSMALLGROUPTotalasof3/31/15"]
    playground1["SGLossAPMM"] = playground1["SGPremiumPMM"] - playground1["SGCostsPMM"]
    playground1["SGLossBPMM"] = playground1["SGLossAPMM"] + playground1["SGRTPMM"]

add_columns_ind(data2014_ind)
add_columns_ind(data2015_ind)
add_columns_ind(data2016_ind)

add_columns_sg(data2014_sg)
add_columns_sg(data2015_sg)
add_columns_sg(data2016_sg)

merged_ind = data2014_ind.merge(data2015_ind, on='HIOS ID', how='outer', suffixes=('_2014', '_2015'))
merged_ind = merged_ind.where(merged_ind["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15_2014"] > 2000).dropna(how='all')
merged_ind = merged_ind.where(merged_ind["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15_2015"] > 2000).dropna(how='all')
merged_ind_final = merged_ind.merge(data2016_ind, on='HIOS ID', how='outer', suffixes=('', '_2016'))
#merged_ind_final = merged_ind_final.where(merged_ind_final["7.4Membermonths2HealthInsuranceINDIVIDUALTotalasof3/31/15"] > 2000).dropna(how='all')
merged_ind_final.to_csv("../Week13/IndividualData.csv")

merged_sg = data2014_sg.merge(data2015_sg, on='HIOS ID', how='outer', suffixes=('_2014', '_2015'))
merged_sg = merged_sg.where(merged_sg["7.4Membermonths2HealthInsurancesgIVIDUALTotalasof3/31/15_2014"] > 2000).dropna(how='all')
merged_sg = merged_sg.where(merged_sg["7.4Membermonths2HealthInsurancesgIVIDUALTotalasof3/31/15_2015"] > 2000).dropna(how='all')
merged_sg_final = merged_sg.merge(data2016_sg, on='HIOS ID', how='outer', suffixes=('', '_2016'))
#merged_sg_final = merged_sg_final.where(merged_sg_final["7.4Membermonths2HealthInsurancesgIVIDUALTotalasof3/31/15"] > 2000).dropna(how='all')
merged_sg_final.to_csv("../Week13/SmallGroupData.csv")