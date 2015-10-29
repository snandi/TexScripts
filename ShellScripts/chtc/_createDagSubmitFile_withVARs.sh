#!/bin/bash

## This script creates the dag submit file, example dagSubmit.dag 

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
	    echo "JOB $jobID submitFiles/submitFile_VAR.txt"
	    echo "VARS $jobID Iter=\"$Iter\""
	    echo "VARS $jobID Seed1=\"$Seed1\""
	    echo "VARS $jobID Seed2=\"$Seed2\""
	    echo " "
        done
done < $FILE



