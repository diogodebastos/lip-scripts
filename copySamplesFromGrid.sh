#!/bin/bash

#USEFUL CMDs
#export SAMPLE=ZJetsToNuNu_HT100to200 && ls -d $SAMPLE*/18*/*/heppyOutput_* | wc && ls -d $SAMPLE/Chunk* | wc

#export LABEL=Stop4Body17/Fall17ProdMay9/ProdMay9
export LABEL=Stop4Body17/Fall17ProdNov10/ProdNov10
##export LABEL=Stop4Body17/Fall17ProdNov8TEST/ProdNov8TEST
export SAMPLE=$1
export SAMPLE_DIR_ext=$2
export INIT_CHUNK=$3
export OUTPUT_DIR=/lstore/cms/dbastos/tmp/${SAMPLE}

mkdir /lstore/cms/dbastos/tmp/${SAMPLE}

chunks=(
"16"
"17"
"18"
"19"
"20"
)

j=0000

#for i in "${chunks[@]}";do
for i in $(seq $INIT_CHUNK 2999); do
 if [ "$i" -gt 999 ]
 then
  j=0001
 fi
 if [ "$i" -gt 1999 ]
 then
  j=0002
 fi
 gfal-copy -v srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/${LABEL}/${SAMPLE}/${SAMPLE_DIR_ext}/${j}/heppyOutput_${i}.tgz /lstore/cms/dbastos/tmp/${SAMPLE}/
 tar zxvfC ${OUTPUT_DIR}/heppyOutput_${i}.tgz ${OUTPUT_DIR}
 mv ${OUTPUT_DIR}/Output ${OUTPUT_DIR}/Chunk${i}
 gfal-copy -vprf ${OUTPUT_DIR}/Chunk${i} srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/${LABEL}/${SAMPLE}/Chunk${i}
 rm ${OUTPUT_DIR}/heppyOutput_${i}.tgz
 rm -rf ${OUTPUT_DIR}/Chunk${i}
 ..$gfal-rm -vr srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/${SAMPLE}/${SAMPLE_DIR_ext}
done
