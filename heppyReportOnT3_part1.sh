#!/bin/bash

export DIR=/gstore/t3cms/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9
export TMP_DIR=/lstore/cms/dbastos/heppyReportTmp
export out=gstore/t3cms
export in=cmst3
export JSON_DIR=JSONAnalyzer

for filename in $DIR/*Run*; do
  if [ ! -d "${TMP_DIR}/${filename/$DIR}" ]; then 
    #echo ${TMP_DIR}/${filename/$DIR}
    mkdir ${TMP_DIR}/${filename/$DIR}
  fi
  for i in $filename/*Chunk*/JSON*; do 
    export CHUNK_DIR=$i
    for j in  $CHUNK_DIR/*; do 
      export FILE=$j
      #echo ${FILE/$out/$in}
      export DATA_CHUNK_DIR=${TMP_DIR}/${filename/$DIR}/${CHUNK_DIR/$filename}
      echo $DATA_CHUNK_DIR
      if [ ! -d "$DATA_CHUNK_DIR" ]; then
        #echo ${DATA_CHUNK_DIR/$JSON_DIR}
        mkdir ${DATA_CHUNK_DIR/$JSON_DIR}
        mkdir $DATA_CHUNK_DIR
      fi
      gfal-copy -vpr srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN="${FILE/$out/$in}" $DATA_CHUNK_DIR 
    done
    #heppy_report.py $TMP_DIR -a ""
    #gfal-copy -vprf $TMP_DIR/lumiSummary.json srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN="${CHUNK_DIR/$out/$in}"
    #rm -rf $TMP_DIR/*    
  done
done

