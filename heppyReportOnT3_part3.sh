#!/bin/bash
export TMP_DIR=/lstore/cms/dbastos/heppyReportTmp

for dataset in ${TMP_DIR}/*Run*; do
  for file in ${dataset}/Chunk*/JSON*; do
    #heppy_report.py $file -a ""
    export FILE_TMP_SMALL_DIR=${file/$TMP_DIR}
    #echo $FILE_TMP_SMALL_DIR
    gfal-copy -vprf $file/lumiSummary.json srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/"${FILE_TMP_SMALL_DIR}"
  done
  #mergeJSON.py ${dataset}/Chunk*/JSON*/lumiSummary.json --output ${dataset}.json
  export DATASET_TMP_SMALL_DIR=${dataset/$TMP_DIR}
  #echo $DATASET_TMP_SMALL_DIR
  gfal-copy -vprf ${dataset}/${dataset}.json srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/"${DATASET_TMP_SMALL_DIR}"
done
