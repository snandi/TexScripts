#!/bin/bash

## This script creates the dag submit file, for multiple seeds, for running condor version of 
## random forest model

## Execution: ./_createDagSubmitFile_condorRF_redo.sh 1 1000 "condorRFRun02" > dagSubmit_condorRFRun02_redo.dag

fromSeed=$1
toSeed=$2
condorRun=$3  ## example: "condorRFRun02" or "condorRFRun03", etc

echo "CONFIG dagman_config"
for Seed in `seq $fromSeed $toSeed` 
do
	modelFile="/ua/snandi/newtongroup/mm52-all7341/SequencePrediction/$condorRun/Seed$Seed/RF_Model_Seed$Seed.RData"
	if [ ! -f "$modelFile" ];
	then
	jobID=seed$Seed
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_RFModel_$condorRun.txt"
	echo "VARS $jobID Seed=\"$Seed\""
	echo " "
	fi
done



