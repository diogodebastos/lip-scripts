#!/bin/bash
source arrays.sh

source /cvmfs/cms.cern.ch/crab3/crab.sh

for i in "${TTx_array[@]}"; do
    echo -e "\nKilling \033[0;31m$i\033[0m"
    crab kill --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL}
done

