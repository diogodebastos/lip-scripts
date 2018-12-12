#!/bin/bash
source allSamplesFromGrid.sh

for sample in "${samples[@]}"; do
 echo -e "\033[0;31m$sample\033[0m" 
 gfal-rm -vr srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/${sample}
done