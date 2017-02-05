#!/bin/bash

## This script creates the dag submit file, for multiple seeds, for running condor version of 
## random forest model

fromSeed=$1
toSeed=$2

echo "CONFIG dagman_config"
for Seed in `seq $fromSeed $toSeed` 
do
	modelFile="/ua/snandi/newtongroup/mm52-all7341/SequencePrediction/condorRFRun01/Seed$Seed/RF_Model_Seed$Seed.RData"
	if [ ! -f "$modelFile" ];
	then
	jobID=seed$Seed
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_RFModel_condorRFRun01.txt"
	echo "VARS $jobID Seed=\"$Seed\""
	echo " "
	fi
done



