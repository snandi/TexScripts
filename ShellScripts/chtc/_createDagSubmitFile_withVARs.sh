#!/bin/bash

## This script creates the dag submit file, example dagSubmit.dag 
## Usage: _createDagSubmitFile_withVARs.sh SeedsForPower.txt 499 > dagSubmit_Run04_2015-12-08.dag

FILE=$1
toIter=$2

echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    for Iter in `seq 0 $toIter`;
	do
    	    jobID=Seed$Seed1"_"Seed$Seed2"_"$Iter
	    echo "JOB $jobID submitFiles/submitFile_VAR.txt"
	    echo "VARS $jobID Iter=\"$Iter\""
	    echo "VARS $jobID Seed1=\"$Seed1\""
	    echo "VARS $jobID Seed2=\"$Seed2\""
	    echo " "
        done
done < $FILE



