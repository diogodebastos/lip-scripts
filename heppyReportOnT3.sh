#!/bin/bash

export DIR=/gstore/t3cms/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9
export TMP_DIR=/lstore/cms/dbastos/heppyReportTmp
export out=gstore/t3cms
export in=cmst3


for filename in $DIR/*; do
  for i in $filename/*Chunk*/JSON*; do 
    export CHUNK_DIR=$i
    for j in  $CHUNK_DIR/*; do 
      export FILE=$j
      gfal-copy -vprf srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN="${FILE/$out/$in}" $TMP_DIR 
    done
    heppy_report.py $TMP_DIR -a ""
    gfal-copy -vprf $TMP_DIR/lumiSummary.json srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN="${CHUNK_DIR/$out/$in}"
    rm -rf $TMP_DIR/*    
  done
done

