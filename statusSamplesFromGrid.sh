#!/bin/bash
source allSamplesFromGrid.sh

for sample in "${samples[@]}"; do
 echo -e "\033[0;31m$sample\033[0m"
 ls -d ${GSTORE}/${sample}*/18*/*/heppyOutput_* | wc -l && ls -d ${GSTORE}/${sample}/Chunk* | wc -l
done