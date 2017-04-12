#!/bin/bash

## This script creates the dag submit file, for all RScript11-08_Register_Iterated

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## _createDagSubmitFile_RS11-08_iterated_redo.sh "Run09_3" 1 300 > dagSubmit_Run09_3_iterated_redo.dag

runID=$1
Seed1=$2
Seed2=$3

echo "CONFIG dagman_config"
for Seed in `seq $Seed1 $Seed2` 
do
    DataFile="/z/Proj/newtongroup/snandi/Simulation_Registration/$runID/Seed$Seed/RegData_Iterated_Seed$Seed.RData"
    if [ ! -f "$DataFile" ];
    then
    	jobID="Seed"$Seed
    	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS11-08_iterated.txt"
    	echo "VARS $jobID Seed=\"$Seed\""
    	echo " "
    fi
done



