#!/bin/bash

## This script removes all the condor outputs that are below a particular size threshold

FILE=$1
RunID=$2
fromIter=$3
toIter=$4

echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    for Iter in `seq $fromIter $toIter`;
	do
	    RDataFile="/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/Seed$Seed1"_"Seed$Seed2/Iter$Iter/TStats_Permute_$Iter.RData"
	    file_size=`du -s "$RDataFile" | cut -f1`
	    echo $file_size

	    # if [ ! -f "$RDataFile" ];
	    # 	then
	    # 	    echo "JOB $jobID submitFiles/submitFile_VAR.txt"
	    # 	    echo "VARS $jobID Iter=\"$Iter\""
	    # 	    echo "VARS $jobID Seed1=\"$Seed1\""
	    # 	    echo "VARS $jobID Seed2=\"$Seed2\""
	    # 	    echo " "
	    # fi
        done
done < $FILE

