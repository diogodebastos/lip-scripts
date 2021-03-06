#!/bin/bash
export GSTORE=/gstore/t3cms/store/user/dchasque/Stop4Body17/Fall17ProdNov10/ProdNov10

TEST=(
"QCD_Pt170to300_Mu5"
"QCD_HT100to200"
)

DYJets=(
"DYJetsToLL_M4to50_HT100to200"
"DYJetsToLL_M4to50_HT200to400"
"DYJetsToLL_M4to50_HT400to600"
"DYJetsToLL_M4to50_HT600toInf"
"DYJetsToLL_M4to50_HT70to100"
"DYJetsToLL_M50"
"DYJetsToLL_M50_ext"
"DYJetsToLL_M50_HT100to200"
"DYJetsToLL_M50_HT1200to2500"
"DYJetsToLL_M50_HT200to400"
"DYJetsToLL_M50_HT2500toInf"
"DYJetsToLL_M50_HT400to600"
"DYJetsToLL_M50_HT600to800"
"DYJetsToLL_M50_HT800to1200"
"DYJetsToLL_M50_LO"
"DYJetsToLL_M50_LO_ext"
)

data=(
"JetHT_Run2017B_17Nov2017"
"JetHT_Run2017C_17Nov2017"
"JetHT_Run2017D_17Nov2017"
"JetHT_Run2017E_17Nov2017"
"JetHT_Run2017F_17Nov2017"
"MET_Run2017B_17Nov2017"
"MET_Run2017C_17Nov2017"
"MET_Run2017D_17Nov2017"
"MET_Run2017E_17Nov2017"
"MET_Run2017F_17Nov2017"
"SingleElectron_Run2017B_17Nov2017"
"SingleElectron_Run2017C_17Nov2017"
"SingleElectron_Run2017D_17Nov2017"
"SingleElectron_Run2017E_17Nov2017"
"SingleElectron_Run2017F_17Nov2017"
"SingleMuon_Run2017B_17Nov2017"
"SingleMuon_Run2017C_17Nov2017"
"SingleMuon_Run2017D_17Nov2017"
"SingleMuon_Run2017E_17Nov2017"
"SingleMuon_Run2017F_17Nov2017"
)

QCD=(
"QCD_HT1000to1500"
"QCD_HT100to200"
"QCD_HT1500to2000"
"QCD_HT2000toInf"
"QCD_HT200to300"
"QCD_HT300to500"
"QCD_HT500to700"
"QCD_HT700to1000"
"QCD_Pt1000toInf_Mu5"
"QCD_Pt120to170_EMEnriched"
"QCD_Pt120to170_Mu5"
"QCD_Pt15to20_EMEnriched"
"QCD_Pt15to20_Mu5"
"QCD_Pt170to300_EMEnriched"
"QCD_Pt170to300_Mu5"
"QCD_Pt20to30_EMEnriched"
"QCD_Pt20to30_Mu5"
"QCD_Pt300to470_Mu5"
"QCD_Pt300toInf_EMEnriched"
"QCD_Pt30to50_EMEnriched"
"QCD_Pt30to50_Mu5"
"QCD_Pt470to600_Mu5"
"QCD_Pt50to80_EMEnriched"
"QCD_Pt50to80_Mu5"
"QCD_Pt600to800_Mu5"
"QCD_Pt800to1000_Mu5"
"QCD_Pt80to120_EMEnriched"
"QCD_Pt80to120_Mu5"
)

other=(
"TBar_tch"
"TBar_tWch_noFullyHad"
"T_sch_lep"
"T_tch"
"TTGJets"
"TTTW"
"T_tWch_noFullyHad"
"TTW_LO"
"TTWToLNu_fxfx"
"TTZToLLNuNu_amc"
"TTZToLLNuNu_amc_psw"
"WW"
"WZ"
"ZZ"
)

TTJets=(
"TTJets"
"TTJets_madgraph"
"TTLep_pow"
"TTSemi_pow"
"TTHad_pow"
)

WJets=(
"W1JetsToLNu_LO"
"W2JetsToLNu_LO"
"W3JetsToLNu_LO"
"W4JetsToLNu_LO"
"WJetsToLNu_HT100To200"
"WJetsToLNu_HT1200To2500"
"WJetsToLNu_HT200To400"
"WJetsToLNu_HT2500ToInf"
"WJetsToLNu_HT400To600"
"WJetsToLNu_HT600To800"
"WJetsToLNu_HT800To1200"
)

ZInv=(
"ZJetsToNuNu_HT100to200"
"ZJetsToNuNu_HT1200to2500"
"ZJetsToNuNu_HT200to400"
"ZJetsToNuNu_HT2500toInf"
"ZJetsToNuNu_HT400to600"
"ZJetsToNuNu_HT600to800"
"ZJetsToNuNu_HT800t1200"
)

samples=(
"DYJetsToLL_M4to50_HT100to200"
"DYJetsToLL_M4to50_HT200to400"
"DYJetsToLL_M4to50_HT400to600"
"DYJetsToLL_M4to50_HT600toInf"
"DYJetsToLL_M4to50_HT70to100"
"DYJetsToLL_M50"
"DYJetsToLL_M50_ext"
"DYJetsToLL_M50_HT100to200"
"DYJetsToLL_M50_HT1200to2500"
"DYJetsToLL_M50_HT200to400"
"DYJetsToLL_M50_HT2500toInf"
"DYJetsToLL_M50_HT400to600"
"DYJetsToLL_M50_HT600to800"
"DYJetsToLL_M50_HT800to1200"
"DYJetsToLL_M50_LO"
"DYJetsToLL_M50_LO_ext"
"JetHT_Run2017B_17Nov2017"
"JetHT_Run2017C_17Nov2017"
"JetHT_Run2017D_17Nov2017"
"JetHT_Run2017E_17Nov2017"
"JetHT_Run2017F_17Nov2017"
"MET_Run2017B_17Nov2017"
"MET_Run2017C_17Nov2017"
"MET_Run2017D_17Nov2017"
"MET_Run2017E_17Nov2017"
"MET_Run2017F_17Nov2017"
"QCD_HT1000to1500"
"QCD_HT100to200"
"QCD_HT1500to2000"
"QCD_HT2000toInf"
"QCD_HT200to300"
"QCD_HT300to500"
"QCD_HT500to700"
"QCD_HT700to1000"
"QCD_Pt1000toInf_Mu5"
"QCD_Pt120to170_EMEnriched"
"QCD_Pt120to170_Mu5"
"QCD_Pt15to20_EMEnriched"
"QCD_Pt15to20_Mu5"
"QCD_Pt170to300_EMEnriched"
"QCD_Pt170to300_Mu5"
"QCD_Pt20to30_EMEnriched"
"QCD_Pt20to30_Mu5"
"QCD_Pt300to470_Mu5"
"QCD_Pt300toInf_EMEnriched"
"QCD_Pt30to50_EMEnriched"
"QCD_Pt30to50_Mu5"
"QCD_Pt470to600_Mu5"
"QCD_Pt50to80_EMEnriched"
"QCD_Pt50to80_Mu5"
"QCD_Pt600to800_Mu5"
"QCD_Pt800to1000_Mu5"
"QCD_Pt80to120_EMEnriched"
"QCD_Pt80to120_Mu5"
"SingleElectron_Run2017B_17Nov2017"
"SingleElectron_Run2017C_17Nov2017"
"SingleElectron_Run2017D_17Nov2017"
"SingleElectron_Run2017E_17Nov2017"
"SingleElectron_Run2017F_17Nov2017"
"SingleMuon_Run2017B_17Nov2017"
"SingleMuon_Run2017C_17Nov2017"
"SingleMuon_Run2017D_17Nov2017"
"SingleMuon_Run2017E_17Nov2017"
"SingleMuon_Run2017F_17Nov2017"
"TBar_tch"
"TBar_tWch_noFullyHad"
"T_sch_lep"
"T_tch"
"TTGJets"
"TTHad_pow"
"TTJets"
"TTJets_madgraph"
"TTLep_pow"
"TTSemi_pow"
"TTTW"
"T_tWch_noFullyHad"
"TTW_LO"
"TTWToLNu_fxfx"
"TTZToLLNuNu_amc"
"TTZToLLNuNu_amc_psw"
"W1JetsToLNu_LO"
"W2JetsToLNu_LO"
"W3JetsToLNu_LO"
"W4JetsToLNu_LO"
"WJetsToLNu_HT100To200"
"WJetsToLNu_HT1200To2500"
"WJetsToLNu_HT200To400"
"WJetsToLNu_HT2500ToInf"
"WJetsToLNu_HT400To600"
"WJetsToLNu_HT600To800"
"WJetsToLNu_HT800To1200"
"WW"
"WZ"
"ZJetsToNuNu_HT100to200"
"ZJetsToNuNu_HT1200to2500"
"ZJetsToNuNu_HT200to400"
"ZJetsToNuNu_HT2500toInf"
"ZJetsToNuNu_HT400to600"
"ZJetsToNuNu_HT600to800"
"ZJetsToNuNu_HT800t1200"
"ZZ"
)
