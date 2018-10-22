#!/bin/bash
for i in `seq 3 1424`; do
 gfal-rename srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/TTJets/TTJets_Chunk${i} srm://srm01.ncg.ingrid.pt:8444/srm/managerv2?SFN=/cmst3/store/user/dchasque/Stop4Body17/Fall17ProdMay9/ProdMay9/TTJets/Chunk$((i+1))
 echo $i
done
