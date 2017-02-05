#!/bin/bash

## This script creates the dag submit file, for multiple seeds, for running condor version of 
## random forest model
## To run: ./_createDagSubmitFile_condorGBM.sh 1 1000 "condorGBMRun01" > dagSubmit_condorGBMRun01.dag

fromSeed=$1
toSeed=$2
condorRun=$3  ## example: "condorGBMRun02" or "condorGBMRun01", etc

echo "CONFIG dagman_config"
for Seed in `seq $fromSeed $toSeed` 
do
	jobID=seed$Seed
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_GBM_$condorRun.txt"
	echo "VARS $jobID Seed=\"$Seed\""
	echo " "
done

