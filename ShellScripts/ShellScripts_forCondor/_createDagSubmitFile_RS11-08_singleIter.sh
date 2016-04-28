#!/bin/bash

## This script creates the dag submit file, for all RScript11-08_Register_Iterated

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## _createDagSubmitFile_RS11-08_singleIter.sh > dagSubmit_Run09_1_singleIter.dag

echo "CONFIG dagman_config"
for Seed in `seq 1 300` 
do
    jobID="Seed"$Seed
    echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS11-08_singleIter.txt"
    echo "VARS $jobID Seed=\"$Seed\""
    echo " "
done


