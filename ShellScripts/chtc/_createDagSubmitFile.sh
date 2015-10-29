#!/bin/bash

## This script creates the dag submit file, example dagSubmit.dag 

FILE=$1

echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}

    folder=Seed$Seed1"_"Seed$Seed2

    echo "JOB $folder submitFiles/submit_$folder.txt"

done < $FILE
