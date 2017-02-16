#!/bin/bash

## This script creates the dag submit file, for all fragments in the Frag10 file

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## The input files are in /z/Proj/newtongroup/snandi/mm52-all7341/alignmentChunks/
## _createDagSubmitFile_RS11-06_redo.sh /z/Proj/newtongroup/snandi/Simulation_Registration/Run09_2/SeedCombinations.txt "Run09_2" > dagSubmit_Run09_2_pValueBefore_redo.dag

FILE=$1
RunID=$2

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    if [ "$LineNum" -gt "0" ]
    then
	Seed1=${linearray[0]}
	Seed2=${linearray[1]}

        pValueFile="/z/Proj/newtongroup/snandi/Simulation_Registration/$RunID/pValues/pValue_before_Seed"$Seed1"_Seed"$Seed2".RData"
	if [ ! -f "$pValueFile" ];
	then
	    jobID="Seed"$Seed1"_Seed"$Seed2
	    echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS11-06.txt"
	    echo "VARS $jobID Seed1=\"$Seed1\""
	    echo "VARS $jobID Seed2=\"$Seed2\""
	    echo " "
	fi
    fi
done < $FILE


