#!/bin/bash
source arrays.sh

source /cvmfs/cms.cern.ch/crab3/crab.sh

for i in "${QCD_en_array[@]}"; do
 echo -e "Resubmit \033[0;31m$i\033[0m"
#crab resubmit --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL}
 if [[ "$i" = "${array[0]}" ]]; then
  crab resubmit --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL}
 else
  crab resubmit --dir="$i"/"${i/${LABEL}}"${DATA}${LABEL} | grep -v "Found no jobs to resubmit" 
 fi
done

