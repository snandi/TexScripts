#!/bin/bash

## This script creates the dag submit file, for multiple seeds, for running condor version of 
## random forest model
## To run: ./_createDagSubmitFile_condorGenomeWide_redo.sh 1 1000 "condorGenomeWideRun01" 1000 5 > dagSubmit_condorGenomeWideRun01.dag

fromSeed=$1
toSeed=$2
condorRun=$3  ## example: "condorGenomeWideRun01" or "condorGenomeWideRun02", etc
nFeatures=$4
maxNmers=$5

echo "CONFIG dagman_config"
for Seed in `seq $fromSeed $toSeed` 
do
	modelFile="/ua/snandi/newtongroup/mm52-all7341/SequencePrediction/$condorRun/Seed$Seed/RF_Model_Seed$Seed.RData"
	if [ ! -f "$modelFile" ];
	then
		jobID=seed$Seed
		echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_$condorRun.txt"
		echo "VARS $jobID Seed=\"$Seed\""
		echo "VARS $jobID N_Features=\"$nFeatures\""
		echo "VARS $jobID Max_Nmers=\"$maxNmers\""
		echo " "
	fi
done

