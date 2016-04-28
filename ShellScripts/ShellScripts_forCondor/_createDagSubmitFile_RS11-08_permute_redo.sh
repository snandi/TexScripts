#!/bin/bash

## This script creates the dag submit file, for all RScript11-08_Register_Iterated

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## _createDagSubmitFile_RS11-08_permute.sh /z/Proj/newtongroup/snandi/Simulation_Registration/Run09_1/SeedCombs_Below0.9_bcg.txt 1 500 > dagSubmit_Run09_1_permute.dag

FILE=$1
fromIter=$2
toIter=$3

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    if [ "$LineNum" -gt "1" ]
    then
	Seed1=${linearray[0]}
	Seed2=${linearray[1]}
	for Iter in `seq 1 500` 
	do
	    DataFile="/z/Proj/newtongroup/snandi/Simulation_Registration/Run09_1/Seed"$Seed1"_Seed"$Seed2"/Iter"$Iter"/Test_Stats_List_"$Iter".RData"
	    if [ ! -f "$DataFile" ];
	    then
		jobID="Seed"$Seed1"_Seed"$Seed2"_Iter"$Iter
		echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS11-08_permute.txt"
		echo "VARS $jobID Seed1=\"$Seed1\""
		echo "VARS $jobID Seed2=\"$Seed2\""
		echo "VARS $jobID Iter=\"$Iter\""
		echo " "
	    fi
	done
    fi
done < $FILE

