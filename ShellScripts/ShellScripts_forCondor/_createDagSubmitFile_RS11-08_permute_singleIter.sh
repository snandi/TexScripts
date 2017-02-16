#!/bin/bash

## This script creates the dag submit file, for all RScript11-08_Register_permute_singleIter_bcgCondor.R

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## _createDagSubmitFile_RS11-08_permute_singleIter.sh /z/Proj/newtongroup/snandi/Simulation_Registration/Run09_2/SeedCombsTemp.txt 1 500 > dagSubmit_Run09_2_permute_singleIter_bcg.dag

FILE=$1
fromIter=$2
toIter=$3

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))

    Seed1=${linearray[0]}
    Seed2=${linearray[1]}

for Iter in `seq $fromIter $toIter` 
do
    jobID="Seed"$Seed1"_Seed"$Seed2"_Iter"$Iter
    echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS11-08_permute_singleIter.txt"
    echo "VARS $jobID Seed1=\"$Seed1\""
    echo "VARS $jobID Seed2=\"$Seed2\""
    echo "VARS $jobID Iter=\"$Iter\""
    echo " "
done
done < $FILE


