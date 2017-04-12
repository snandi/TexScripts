#!/bin/bash

## This script creates the dag submit file, for all RScript11-08_Register_Iterated

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## _createDagSubmitFile_RS11-08_iterated.sh 1 500 > dagSubmit_Run09_1_iterated.dag

fromIter=$1
toIter=$2

echo "CONFIG dagman_config"
for Seed in `seq $fromiter $toIter` 
do
    jobID="Seed"$Seed
    echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS11-08_iterated.txt"
    echo "VARS $jobID Seed=\"$Seed\""
    echo " "
done


