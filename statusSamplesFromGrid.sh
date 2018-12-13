#!/bin/bash
source allSamplesFromGrid.sh

for sample in "${TEST[@]}"; do
 heppy_out=$(ls -d ${GSTORE}/${sample}*/18*/*/heppyOutput_* | wc -l)
 chunk=$(ls -d ${GSTORE}/${sample}/Chunk*/treeProducerStop4Body/tree.root | wc -l)
 dif=$(( $heppy_out - $chunk))
 if [ $dif = 0 ]; then
  echo -e "\033[0;32m$sample\033[0m"
 else
  echo -e "\033[0;31m$sample\033[0m"
  if [[ $dif < 10 ]]; then
   echo "Bad Chunks:"
   for j in $(seq 1 $heppy_out); do
    dir=${GSTORE}/${sample}/Chunk${j}/treeProducerStop4Body/tree.root
    if ! [ -n "$(ls -A $dir 2>/dev/null)" ]; then
     echo " $j" 
    fi
   done
  fi
 fi
 echo $heppy_out
 echo $chunk
done
