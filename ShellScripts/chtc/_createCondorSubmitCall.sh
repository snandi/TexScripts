#!/bin/bash

## This script creates the dag submit file, example dagSubmit.dag 

FILE=$1

i=1
while read line; 
do
    i=$((i + 1))
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}

    folder=Seed$Seed1"_"Seed$Seed2
    
    if (( $i % 20 == 0 )) 
	then
	echo "sleep 7200"
    fi
    echo "condor_submit submitFiles/submit_$folder.txt"

done < $FILE
