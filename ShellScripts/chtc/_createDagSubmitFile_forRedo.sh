#!/bin/bash

## This script creates the dag submit file, only for those iterations
## which do not have a .RData file
## Usage: Go to ~/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/
## _createDagSubmitFile_forRedo.sh Seeds_Redo.txt > dagSubmit_Redo.dag

FILE=$1

echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    for Iter in `seq 0 999`;
	do
    	    jobID=Seed$Seed1"_"Seed$Seed2"_"$Iter
	    RDataFile="/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/Seed$Seed1"_"Seed$Seed2/Iter$Iter/TStats_Permute_$Iter.RData"
	    #echo $RDataFile
	    if [ ! -f "$RDataFile" ];
		then
		    echo "JOB $jobID submitFiles/submitFile_VAR.txt"
		    echo "VARS $jobID Iter=\"$Iter\""
		    echo "VARS $jobID Seed1=\"$Seed1\""
		    echo "VARS $jobID Seed2=\"$Seed2\""
		    echo " "
	    fi
        done
done < $FILE

