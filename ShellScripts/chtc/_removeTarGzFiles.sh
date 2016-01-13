#!/bin/bash

## This script removes the RLIBS.tar.gz files produced by condor outputs
## Usage: Go to the desired RunID folder and do:
## _removeTarGzFiles.sh SeedsForPower.txt "Run08_6"

FILE=$1
RunID=$2

i=1
while read line; 
do
    i=$((i + 1))
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}

    folder=/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/Seed$Seed1"_"Seed$Seed2
    
    if (( $i < 1500 )) 
	then
	    rm $folder/Iter*/*.tar.gz

	    echo $folder
    fi

done < $FILE
