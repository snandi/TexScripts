#!/bin/bash

## This script creates the dag submit file, for all RScript11-08_Register_Iterated

## _createDagSubmitFile_RS11-08_permute_Iterated.sh SeedCombs_forPower.txt 1 500 > dagSubmit_Run09_2_permute_Iterated_chtc.dag 

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
    echo "JOB $jobID submitFile_Run09_2.sub"
    echo "VARS $jobID Seed1=\"$Seed1\""
    echo "VARS $jobID Seed2=\"$Seed2\""
    echo "VARS $jobID Iter=\"$Iter\""
    echo " "
done
done < $FILE


