#!/bin/bash
export TMP_DIR=/lstore/cms/dbastos/heppyReportTmp

for dataset in ${TMP_DIR}/*Run*; do
  for file in ${dataset}/Chunk*/JSON*; do
    heppy_report.py $file -a ""
  done
  mergeJSON.py ${dataset}/Chunk*/JSON*/lumiSummary.json --output ${dataset}.json
done
