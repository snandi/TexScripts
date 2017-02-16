#!/bin/bash

## This script creates the dag submit file, only for those iterations
## which did not complete properly. It takes in the file from Stat
## Usage: Go to ~/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/
## _createDagSubmitFile_forRedo.sh Seeds_Redo.txt "Run08_6"  > dagSubmit_Redo.dag

FILE=$1
RunID=$2

echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    Iter=${linearray[2]}
    jobID=Seed$Seed1"_"Seed$Seed2"_"$Iter
    echo "JOB $jobID submitFiles/submitFile_VAR.txt"
    echo "VARS $jobID Iter=\"$Iter\""
    echo "VARS $jobID Seed1=\"$Seed1\""
    echo "VARS $jobID Seed2=\"$Seed2\""
    echo " "
done < $FILE

