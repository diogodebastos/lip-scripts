export DATA=Fall17
export LABEL=ProdMay9

source /cvmfs/cms.cern.ch/crab3/crab.sh

TTx_array=(
"crab_TTHad_pow_ProdMay9"
"crab_TTJets_ProdMay9"
"crab_TTLep_pow_ProdMay9"
"crab_TTSemi_pow_ProdMay9"
)

QCD_en_array=(
"crab_QCD_Pt1000toInf_Mu5_ProdMay9"
"crab_QCD_Pt120to170_EMEnriched_ProdMay9"
"crab_QCD_Pt120to170_Mu5_ProdMay9"
"crab_QCD_Pt15to20_EMEnriched_ProdMay9"
"crab_QCD_Pt15to20_Mu5_ProdMay9"
"crab_QCD_Pt170to300_EMEnriched_ProdMay9"
"crab_QCD_Pt170to300_Mu5_ProdMay9"
"crab_QCD_Pt20to30_EMEnriched_ProdMay9"
"crab_QCD_Pt20to30_Mu5_ProdMay9"
"crab_QCD_Pt300to470_Mu5_ProdMay9"
"crab_QCD_Pt300toInf_EMEnriched_ProdMay9"
"crab_QCD_Pt30to50_EMEnriched_ProdMay9"
"crab_QCD_Pt30to50_Mu5_ProdMay9"
"crab_QCD_Pt470to600_Mu5_ProdMay9"
"crab_QCD_Pt50to80_EMEnriched_ProdMay9"
"crab_QCD_Pt50to80_Mu5_ProdMay9"
"crab_QCD_Pt600to800_Mu5_ProdMay9"
"crab_QCD_Pt800to1000_Mu5_ProdMay9"
"crab_QCD_Pt80to120_EMEnriched_ProdMay9"
"crab_QCD_Pt80to120_Mu5_ProdMay9"
)

data_array=(
"crab_JetHT_Run2017B_17Nov2017_ProdMay9"
"crab_JetHT_Run2017C_17Nov2017_ProdMay9"
"crab_JetHT_Run2017D_17Nov2017_ProdMay9"
"crab_JetHT_Run2017E_17Nov2017_ProdMay9"
"crab_JetHT_Run2017F_17Nov2017_ProdMay9"
"crab_MET_Run2017B_17Nov2017_ProdMay9"
"crab_MET_Run2017C_17Nov2017_ProdMay9"
"crab_MET_Run2017D_17Nov2017_ProdMay9"
"crab_MET_Run2017E_17Nov2017_ProdMay9"
"crab_MET_Run2017F_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017B_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017C_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017D_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017E_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017F_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017B_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017C_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017D_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017E_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017F_17Nov2017_ProdMay9"
)

array=(
"crab_DYJetsToLL_M4to50_HT100to200_ProdMay9"
"crab_DYJetsToLL_M4to50_HT200to400_ProdMay9"
"crab_DYJetsToLL_M4to50_HT400to600_ProdMay9"
"crab_DYJetsToLL_M4to50_HT600toInf_ProdMay9"
"crab_DYJetsToLL_M4to50_HT70to100_ProdMay9"
"crab_DYJetsToLL_M50_HT100to200_ProdMay9"
"crab_DYJetsToLL_M50_HT200to400_ProdMay9"
"crab_DYJetsToLL_M50_HT2500toInf_ProdMay9"
"crab_DYJetsToLL_M50_HT400to600_ProdMay9"
"crab_DYJetsToLL_M50_HT600to800_ProdMay9"
"crab_DYJetsToLL_M50_HT800to1200_ProdMay9"
"crab_DYJetsToLL_M50_LO_ProdMay9"
"crab_DYJetsToLL_M50_LO_ext_ProdMay9"
"crab_DYJetsToLL_M50_ProdMay9"
"crab_DYJetsToLL_M50_ext_ProdMay9"
"crab_JetHT_Run2017B_17Nov2017_ProdMay9"
"crab_JetHT_Run2017C_17Nov2017_ProdMay9"
"crab_JetHT_Run2017D_17Nov2017_ProdMay9"
"crab_JetHT_Run2017E_17Nov2017_ProdMay9"
"crab_JetHT_Run2017F_17Nov2017_ProdMay9"
"crab_MET_Run2017B_17Nov2017_ProdMay9"
"crab_MET_Run2017C_17Nov2017_ProdMay9"
"crab_MET_Run2017D_17Nov2017_ProdMay9"
"crab_MET_Run2017E_17Nov2017_ProdMay9"
"crab_MET_Run2017F_17Nov2017_ProdMay9"
"crab_QCD_HT1000to1500_ProdMay9"
"crab_QCD_HT100to200_ProdMay9"
"crab_QCD_HT1500to2000_ProdMay9"
"crab_QCD_HT2000toInf_ProdMay9"
"crab_QCD_HT200to300_ProdMay9"
"crab_QCD_HT300to500_ProdMay9"
"crab_QCD_HT500to700_ProdMay9"
"crab_QCD_HT700to1000_ProdMay9"
"crab_QCD_Pt1000toInf_Mu5_ProdMay9"
"crab_QCD_Pt120to170_EMEnriched_ProdMay9"
"crab_QCD_Pt120to170_Mu5_ProdMay9"
"crab_QCD_Pt15to20_EMEnriched_ProdMay9"
"crab_QCD_Pt15to20_Mu5_ProdMay9"
"crab_QCD_Pt170to300_EMEnriched_ProdMay9"
"crab_QCD_Pt170to300_Mu5_ProdMay9"
"crab_QCD_Pt20to30_EMEnriched_ProdMay9"
"crab_QCD_Pt20to30_Mu5_ProdMay9"
"crab_QCD_Pt300to470_Mu5_ProdMay9"
"crab_QCD_Pt300toInf_EMEnriched_ProdMay9"
"crab_QCD_Pt30to50_EMEnriched_ProdMay9"
"crab_QCD_Pt30to50_Mu5_ProdMay9"
"crab_QCD_Pt470to600_Mu5_ProdMay9"
"crab_QCD_Pt50to80_EMEnriched_ProdMay9"
"crab_QCD_Pt50to80_Mu5_ProdMay9"
"crab_QCD_Pt600to800_Mu5_ProdMay9"
"crab_QCD_Pt800to1000_Mu5_ProdMay9"
"crab_QCD_Pt80to120_EMEnriched_ProdMay9"
"crab_QCD_Pt80to120_Mu5_ProdMay9"
"crab_SingleElectron_Run2017B_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017C_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017D_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017E_17Nov2017_ProdMay9"
"crab_SingleElectron_Run2017F_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017B_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017C_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017D_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017E_17Nov2017_ProdMay9"
"crab_SingleMuon_Run2017F_17Nov2017_ProdMay9"
"crab_TBar_tWch_noFullyHad_ProdMay9"
"crab_TBar_tch_ProdMay9"
"crab_TTGJets_ProdMay9"
"crab_TTHad_pow_ProdMay9"
"crab_TTJets_ProdMay9"
"crab_TTLep_pow_ProdMay9"
"crab_TTSemi_pow_ProdMay9"
"crab_TTWToLNu_fxfx_ProdMay9"
"crab_TTW_LO_ProdMay9"
"crab_TTZToLLNuNu_amc_ProdMay9"
"crab_TTZToLLNuNu_amc_psw_ProdMay9"
"crab_T_sch_lep_ProdMay9"
"crab_T_tWch_noFullyHad_ProdMay9"
"crab_T_tch_ProdMay9"
"crab_W1JetsToLNu_LO_ProdMay9"
"crab_W2JetsToLNu_LO_ProdMay9"
"crab_W3JetsToLNu_LO_ProdMay9"
"crab_W4JetsToLNu_LO_ProdMay9"
"crab_WJetsToLNu_LO_ProdMay9"
"crab_WW_ProdMay9"
"crab_WZ_ProdMay9"
"crab_ZZ_ProdMay9"
"crab_ZJetsToNuNu_HT100to200_ProdMay9"
"crab_ZJetsToNuNu_HT200to400_ProdMay9"
"crab_ZJetsToNuNu_HT400to600_ProdMay9"
"crab_ZJetsToNuNu_HT600to800_ProdMay9"
"crab_ZJetsToNuNu_HT800t1200_ProdMay9"
"crab_ZJetsToNuNu_HT1200to2500_ProdMay9"
"crab_ZJetsToNuNu_HT2500toInf_ProdMay9"
)

for i in "${QCD_en_array[@]}"; do
 echo -e "Resubmit \033[0;31m$i\033[0m"
#crab resubmit --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL}
 if [[ "$i" = "${array[0]}" ]]; then
  crab resubmit --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL}
 else
  crab resubmit --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL} | grep -v "Found no jobs to resubmit" 
 fi
done

