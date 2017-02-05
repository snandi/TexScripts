#!/bin/bash

## This script creates the dag submit file, for all rows of the "testing" set, for predicting 
## Fscans using genomeWide models run on condor
## To run: ./_createDagSubmitFile_predictGenomeWide.sh 1 3056 400 5 > dagSubmit_predictGenomeWideRun01.dag

fromRow=$1
toRow=$2
nRandomSeeds=$3
maxNmers=$4

echo "CONFIG dagman_config"
for Row in `seq $fromRow $toRow` 
do
	jobID=row$Row
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_predictGenomeWide.txt"
	echo "VARS $jobID Row=\"$Row\""
	echo "VARS $jobID nRandomSeeds=\"$nRandomSeeds\""
	echo "VARS $jobID Max_Nmers=\"$maxNmers\""
	echo " "
done

