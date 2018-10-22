#!/bin/bash

export LABEL=Stop4Body17/Fall17ProdMay9/ProdMay9
export SAMPLE=$1
export SAMPLE_DIR_ext=$2
export OUTPUT_DIR=/lstore/cms/dbastos/tmp/${SAMPLE}

mkdir /lstore/cms/dbastos/tmp/${SAMPLE}

chunks=(
"340"
)

#for i in "${chunks[@]}";do
for i in {1..100}; do
 gfal-copy -v srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/${LABEL}/${SAMPLE}/${SAMPLE_DIR_ext}/0000/heppyOutput_${i}.tgz /lstore/cms/dbastos/tmp/${SAMPLE}/
 tar zxvfC ${OUTPUT_DIR}/heppyOutput_${i}.tgz ${OUTPUT_DIR}
 mv ${OUTPUT_DIR}/Output ${OUTPUT_DIR}/Chunk${i}
 gfal-copy -vprf ${OUTPUT_DIR}/Chunk${i} srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/${LABEL}/${SAMPLE}/Chunk${i}
 rm ${OUTPUT_DIR}/heppyOutput_${i}.tgz
 rm -rf ${OUTPUT_DIR}/Chunk${i}
 #..$gfal-rm -vr srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/${SAMPLE}/${SAMPLE_DIR_ext}
done
